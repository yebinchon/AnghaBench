; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_unsol_fcp_abort_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_unsol_fcp_abort_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.lpfc_iocbq = type { i32*, %struct.lpfc_nvmet_rcv_ctx* }
%struct.lpfc_nvmet_rcv_ctx = type { i32, i64, i32, i32, i32, i32 }
%struct.lpfc_wcqe_complete = type { i32, i32, i32, i32 }
%struct.lpfc_nvmet_tgtport = type { i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_ABTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"6070 ABTS cmpl: WCQE: %08x %08x %08x %08x\0A\00", align 1
@LPFC_NVMET_ABORT_OP = common dso_local global i32 0, align 4
@LPFC_NVMET_STE_ABORT = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"6112 ABTS Wrong state:%d oxid x%x\0A\00", align 1
@LPFC_NVMET_STE_DONE = common dso_local global i64 0, align 8
@LPFC_NVMET_CTX_RLS = common dso_local global i32 0, align 4
@LPFC_NVMET_XBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"6316 ABTS cmpl oxid x%x flg x%x (%x) WCQE: %08x %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*)* @lpfc_nvmet_unsol_fcp_abort_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nvmet_unsol_fcp_abort_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_wcqe_complete* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_wcqe_complete*, align 8
  %7 = alloca %struct.lpfc_nvmet_rcv_ctx*, align 8
  %8 = alloca %struct.lpfc_nvmet_tgtport*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_wcqe_complete* %2, %struct.lpfc_wcqe_complete** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %12, i32 0, i32 1
  %14 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %13, align 8
  store %struct.lpfc_nvmet_rcv_ctx* %14, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %15 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %19 = icmp ne %struct.lpfc_nvmet_rcv_ctx* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %3
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = load i32, i32* @KERN_INFO, align 4
  %23 = load i32, i32* @LOG_NVME_ABTS, align 4
  %24 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %29 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %33 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %30, i32 %31, i32 %34)
  br label %151

36:                                               ; preds = %3
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.lpfc_nvmet_tgtport*
  store %struct.lpfc_nvmet_tgtport* %42, %struct.lpfc_nvmet_tgtport** %8, align 8
  %43 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %44 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %43, i32 0, i32 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @LPFC_NVMET_ABORT_OP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %54, i32 0, i32 1
  %56 = call i32 @atomic_inc(i32* %55)
  br label %57

57:                                               ; preds = %53, %36
  %58 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %59 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LPFC_NVMET_STE_ABORT, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %65 = load i32, i32* @KERN_ERR, align 4
  %66 = load i32, i32* @LOG_NVME_ABTS, align 4
  %67 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %71 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %69, i32 %72)
  br label %74

74:                                               ; preds = %63, %57
  %75 = load i64, i64* @LPFC_NVMET_STE_DONE, align 8
  %76 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %77 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @LPFC_NVMET_CTX_RLS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %74
  %85 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %86 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @LPFC_NVMET_XBUSY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %84
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %97 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %96, i32 0, i32 5
  %98 = call i32 @list_del_init(i32* %97)
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock(i32* %101)
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %91, %84, %74
  %104 = load i32, i32* @LPFC_NVMET_ABORT_OP, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %107 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %111 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %110, i32 0, i32 4
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %8, align 8
  %115 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %114, i32 0, i32 0
  %116 = call i32 @atomic_inc(i32* %115)
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %118 = load i32, i32* @KERN_INFO, align 4
  %119 = load i32, i32* @LOG_NVME_ABTS, align 4
  %120 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %121 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %125 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %129 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %132 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %136 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %123, i32 %126, i32 %127, i32 %130, i32 %133, i32 %134, i32 %137)
  %139 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %140 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %139, i32 0, i32 1
  store %struct.lpfc_nvmet_rcv_ctx* null, %struct.lpfc_nvmet_rcv_ctx** %140, align 8
  %141 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %142 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %141, i32 0, i32 0
  store i32* null, i32** %142, align 8
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %103
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %147 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %148 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @lpfc_nvmet_ctxbuf_post(%struct.lpfc_hba* %146, i32 %149)
  br label %151

151:                                              ; preds = %20, %145, %103
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_nvmet_ctxbuf_post(%struct.lpfc_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
