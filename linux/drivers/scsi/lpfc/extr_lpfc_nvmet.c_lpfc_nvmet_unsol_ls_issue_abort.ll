; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_unsol_ls_issue_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_unsol_ls_issue_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.lpfc_nvmet_rcv_ctx = type { i64, i32, i32, %struct.lpfc_iocbq*, i32 }
%struct.lpfc_iocbq = type { i32*, i32*, i32, i64, i32 }
%struct.lpfc_nvmet_tgtport = type { i32, i32 }

@LPFC_NVMET_STE_LS_RCV = common dso_local global i64 0, align 8
@LPFC_NVMET_STE_LS_RSP = common dso_local global i64 0, align 8
@LPFC_NVMET_STE_LS_ABORT = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"6418 NVMET LS abort state mismatch IO x%x: %d %d\0A\00", align 1
@LOG_NVME_ABTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"6068 Abort failed: No wqeqs: xri: x%x\0A\00", align 1
@WQE_BUSY = common dso_local global i32 0, align 4
@lpfc_nvmet_xmt_ls_abort_cmp = common dso_local global i32 0, align 4
@LPFC_IO_NVME_LS = common dso_local global i32 0, align 4
@WQE_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"6056 Failed to Issue ABTS. Status x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_nvmet_rcv_ctx*, i32, i32)* @lpfc_nvmet_unsol_ls_issue_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nvmet_unsol_ls_issue_abort(%struct.lpfc_hba* %0, %struct.lpfc_nvmet_rcv_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_nvmet_rcv_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_nvmet_tgtport*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.lpfc_nvmet_rcv_ctx* %1, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %15 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LPFC_NVMET_STE_LS_RCV, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %35, label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LPFC_NVMET_STE_LS_RSP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %44

35:                                               ; preds = %30, %19
  %36 = load i8*, i8** @LPFC_NVMET_STE_LS_ABORT, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  br label %62

44:                                               ; preds = %30, %24
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %46 = load i32, i32* @KERN_ERR, align 4
  %47 = load i32, i32* @LOG_NVME_IOERR, align 4
  %48 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %53, i32 %56)
  %58 = load i8*, i8** @LPFC_NVMET_STE_LS_ABORT, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %44, %35
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.lpfc_nvmet_tgtport*
  store %struct.lpfc_nvmet_tgtport* %68, %struct.lpfc_nvmet_tgtport** %10, align 8
  %69 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %70 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %69, i32 0, i32 3
  %71 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %70, align 8
  %72 = icmp ne %struct.lpfc_iocbq* %71, null
  br i1 %72, label %91, label %73

73:                                               ; preds = %62
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %75 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %74)
  %76 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %77 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %76, i32 0, i32 3
  store %struct.lpfc_iocbq* %75, %struct.lpfc_iocbq** %77, align 8
  %78 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %78, i32 0, i32 3
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %79, align 8
  %81 = icmp ne %struct.lpfc_iocbq* %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %73
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %84 = load i32, i32* @KERN_ERR, align 4
  %85 = load i32, i32* @LOG_NVME_ABTS, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %89 = call i32 @kfree(%struct.lpfc_nvmet_rcv_ctx* %88)
  store i32 0, i32* %5, align 4
  br label %154

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90, %62
  %92 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %93 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %92, i32 0, i32 3
  %94 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %93, align 8
  store %struct.lpfc_iocbq* %94, %struct.lpfc_iocbq** %11, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %96 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @lpfc_nvmet_unsol_issue_abort(%struct.lpfc_hba* %95, %struct.lpfc_nvmet_rcv_ctx* %96, i32 %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* @WQE_BUSY, align 4
  store i32 %102, i32* %13, align 4
  br label %136

103:                                              ; preds = %91
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 0
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load i32, i32* @lpfc_nvmet_xmt_ls_abort_cmp, align 4
  %109 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %110 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %112 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %111, i32 0, i32 3
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @LPFC_IO_NVME_LS, align 4
  %114 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %115 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %119 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %120 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %123 = call i32 @lpfc_sli4_issue_wqe(%struct.lpfc_hba* %118, i32 %121, %struct.lpfc_iocbq* %122)
  store i32 %123, i32* %13, align 4
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 0
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @WQE_SUCCESS, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %103
  %132 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %10, align 8
  %133 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %132, i32 0, i32 1
  %134 = call i32 @atomic_inc(i32* %133)
  store i32 0, i32* %5, align 4
  br label %154

135:                                              ; preds = %103
  br label %136

136:                                              ; preds = %135, %101
  %137 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %10, align 8
  %138 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %137, i32 0, i32 0
  %139 = call i32 @atomic_inc(i32* %138)
  %140 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %141 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %140, i32 0, i32 1
  store i32* null, i32** %141, align 8
  %142 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %143 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %142, i32 0, i32 0
  store i32* null, i32** %143, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %145 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %146 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %144, %struct.lpfc_iocbq* %145)
  %147 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %148 = call i32 @kfree(%struct.lpfc_nvmet_rcv_ctx* %147)
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %150 = load i32, i32* @KERN_ERR, align 4
  %151 = load i32, i32* @LOG_NVME_ABTS, align 4
  %152 = load i32, i32* %13, align 4
  %153 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  store i32 0, i32* %5, align 4
  br label %154

154:                                              ; preds = %136, %131, %82
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @kfree(%struct.lpfc_nvmet_rcv_ctx*) #1

declare dso_local i64 @lpfc_nvmet_unsol_issue_abort(%struct.lpfc_hba*, %struct.lpfc_nvmet_rcv_ctx*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lpfc_sli4_issue_wqe(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
