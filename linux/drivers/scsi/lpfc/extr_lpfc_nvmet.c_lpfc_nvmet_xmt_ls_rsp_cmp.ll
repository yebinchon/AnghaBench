; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_xmt_ls_rsp_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_xmt_ls_rsp_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.lpfc_iocbq = type { i32*, %struct.lpfc_nvmet_rcv_ctx*, i32 }
%struct.lpfc_nvmet_rcv_ctx = type { i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvmefc_tgt_ls_req }
%struct.nvmefc_tgt_ls_req = type { i32 (%struct.nvmefc_tgt_ls_req*)* }
%struct.lpfc_wcqe_complete = type { i64 }
%struct.lpfc_nvmet_tgtport = type { i32, i32, i32, i32 }

@lpfc_wcqe_c_status = common dso_local global i32 0, align 4
@LPFC_NVMET_STE_LS_RSP = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"6410 NVMET LS cmpl state mismatch IO x%x: %d %d\0A\00", align 1
@IOERR_ABORT_REQUESTED = common dso_local global i64 0, align 8
@lpfc_wcqe_c_xb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"NVMET LS  CMPL: xri x%x stat x%x result x%x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_DISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"6038 NVMET LS rsp cmpl: %d %d oxid x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*)* @lpfc_nvmet_xmt_ls_rsp_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nvmet_xmt_ls_rsp_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_wcqe_complete* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_wcqe_complete*, align 8
  %7 = alloca %struct.lpfc_nvmet_tgtport*, align 8
  %8 = alloca %struct.nvmefc_tgt_ls_req*, align 8
  %9 = alloca %struct.lpfc_nvmet_rcv_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_wcqe_complete* %2, %struct.lpfc_wcqe_complete** %6, align 8
  %12 = load i32, i32* @lpfc_wcqe_c_status, align 4
  %13 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %14 = call i64 @bf_get(i32 %12, %struct.lpfc_wcqe_complete* %13)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 1
  %20 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %19, align 8
  store %struct.lpfc_nvmet_rcv_ctx* %20, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %21 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %22 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LPFC_NVMET_STE_LS_RSP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %3
  %27 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %45

31:                                               ; preds = %26, %3
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load i32, i32* @LOG_NVME_IOERR, align 4
  %35 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %36 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %39 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %42 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40, i32 %43)
  br label %45

45:                                               ; preds = %31, %26
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %90

51:                                               ; preds = %45
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.lpfc_nvmet_tgtport*
  store %struct.lpfc_nvmet_tgtport* %57, %struct.lpfc_nvmet_tgtport** %7, align 8
  %58 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %7, align 8
  %59 = icmp ne %struct.lpfc_nvmet_tgtport* %58, null
  br i1 %59, label %60, label %89

60:                                               ; preds = %51
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %7, align 8
  %65 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %64, i32 0, i32 3
  %66 = call i32 @atomic_inc(i32* %65)
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @IOERR_ABORT_REQUESTED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %71, i32 0, i32 2
  %73 = call i32 @atomic_inc(i32* %72)
  br label %74

74:                                               ; preds = %70, %63
  %75 = load i32, i32* @lpfc_wcqe_c_xb, align 4
  %76 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %77 = call i64 @bf_get(i32 %75, %struct.lpfc_wcqe_complete* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %7, align 8
  %81 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %80, i32 0, i32 1
  %82 = call i32 @atomic_inc(i32* %81)
  br label %83

83:                                               ; preds = %79, %74
  br label %88

84:                                               ; preds = %60
  %85 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %7, align 8
  %86 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %85, i32 0, i32 0
  %87 = call i32 @atomic_inc(i32* %86)
  br label %88

88:                                               ; preds = %84, %83
  br label %89

89:                                               ; preds = %88, %51
  br label %90

90:                                               ; preds = %89, %50
  %91 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %92 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store %struct.nvmefc_tgt_ls_req* %93, %struct.nvmefc_tgt_ls_req** %8, align 8
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %95 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %96 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @lpfc_nvmeio_data(%struct.lpfc_hba* %94, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %97, i64 %98, i64 %99)
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %102 = load i32, i32* @KERN_INFO, align 4
  %103 = load i32, i32* @LOG_NVME_DISC, align 4
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %107 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %104, i64 %105, i32 %109)
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %112 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @lpfc_nlp_put(i32 %113)
  %115 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %116 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %115, i32 0, i32 1
  store %struct.lpfc_nvmet_rcv_ctx* null, %struct.lpfc_nvmet_rcv_ctx** %116, align 8
  %117 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %118 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %120 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %121 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %119, %struct.lpfc_iocbq* %120)
  %122 = load %struct.nvmefc_tgt_ls_req*, %struct.nvmefc_tgt_ls_req** %8, align 8
  %123 = getelementptr inbounds %struct.nvmefc_tgt_ls_req, %struct.nvmefc_tgt_ls_req* %122, i32 0, i32 0
  %124 = load i32 (%struct.nvmefc_tgt_ls_req*)*, i32 (%struct.nvmefc_tgt_ls_req*)** %123, align 8
  %125 = load %struct.nvmefc_tgt_ls_req*, %struct.nvmefc_tgt_ls_req** %8, align 8
  %126 = call i32 %124(%struct.nvmefc_tgt_ls_req* %125)
  %127 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %9, align 8
  %128 = call i32 @kfree(%struct.lpfc_nvmet_rcv_ctx* %127)
  ret void
}

declare dso_local i64 @bf_get(i32, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lpfc_nvmeio_data(%struct.lpfc_hba*, i8*, i64, i64, i64) #1

declare dso_local i32 @lpfc_nlp_put(i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @kfree(%struct.lpfc_nvmet_rcv_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
