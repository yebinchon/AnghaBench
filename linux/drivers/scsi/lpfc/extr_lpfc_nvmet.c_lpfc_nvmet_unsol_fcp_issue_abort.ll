; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_unsol_fcp_issue_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_unsol_fcp_issue_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_nvmet_rcv_ctx = type { i64, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32*, %struct.lpfc_iocbq* }
%struct.TYPE_6__ = type { %struct.lpfc_iocbq* }
%struct.lpfc_iocbq = type { i64, i32, i32*, i32 }
%struct.lpfc_nvmet_tgtport = type { i32 }

@LPFC_NVMET_STE_FREE = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"6417 NVMET ABORT ctx freed %d %d oxid x%x\0A\00", align 1
@WQE_BUSY = common dso_local global i32 0, align 4
@LPFC_NVMET_STE_ABORT = common dso_local global i32 0, align 4
@lpfc_nvmet_unsol_fcp_abort_cmp = common dso_local global i32 0, align 4
@LPFC_IO_NVMET = common dso_local global i32 0, align 4
@WQE_SUCCESS = common dso_local global i32 0, align 4
@LPFC_NVMET_CTX_RLS = common dso_local global i32 0, align 4
@LPFC_NVMET_ABORT_OP = common dso_local global i32 0, align 4
@LOG_NVME_ABTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"6135 Failed to Issue ABTS for oxid x%x. Status x%x (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_nvmet_rcv_ctx*, i32, i32)* @lpfc_nvmet_unsol_fcp_issue_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nvmet_unsol_fcp_issue_abort(%struct.lpfc_hba* %0, %struct.lpfc_nvmet_rcv_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_nvmet_rcv_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_nvmet_tgtport*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.lpfc_nvmet_rcv_ctx* %1, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.lpfc_nvmet_tgtport*
  store %struct.lpfc_nvmet_tgtport* %20, %struct.lpfc_nvmet_tgtport** %10, align 8
  %21 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %21, i32 0, i32 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %24 = icmp ne %struct.lpfc_iocbq* %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %4
  %26 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %29, align 8
  %31 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %31, i32 0, i32 8
  store %struct.lpfc_iocbq* %30, %struct.lpfc_iocbq** %32, align 8
  %33 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %34 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %33, i32 0, i32 8
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %34, align 8
  %36 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %25, %4
  %38 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %39 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LPFC_NVMET_STE_FREE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %45 = load i32, i32* @KERN_ERR, align 4
  %46 = load i32, i32* @LOG_NVME_IOERR, align 4
  %47 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %55 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %56)
  %58 = load i32, i32* @WQE_BUSY, align 4
  store i32 %58, i32* %14, align 4
  br label %125

59:                                               ; preds = %37
  %60 = load i32, i32* @LPFC_NVMET_STE_ABORT, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %65 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %69 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @lpfc_nvmet_unsol_issue_abort(%struct.lpfc_hba* %68, %struct.lpfc_nvmet_rcv_ctx* %69, i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %125

76:                                               ; preds = %59
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 1
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %82 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %81, i32 0, i32 8
  %83 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %82, align 8
  store %struct.lpfc_iocbq* %83, %struct.lpfc_iocbq** %11, align 8
  %84 = load i32, i32* @lpfc_nvmet_unsol_fcp_abort_cmp, align 4
  %85 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %86 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %88 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %87, i32 0, i32 2
  store i32* null, i32** %88, align 8
  %89 = load i32, i32* @LPFC_IO_NVMET, align 4
  %90 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %91 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %95 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %94, i32 0, i32 7
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %76
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %104 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %108 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %107, i32 0, i32 7
  store i32* %106, i32** %108, align 8
  br label %109

109:                                              ; preds = %98, %76
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %111 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %112 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %115 = call i32 @lpfc_sli4_issue_wqe(%struct.lpfc_hba* %110, i32* %113, %struct.lpfc_iocbq* %114)
  store i32 %115, i32* %14, align 4
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 1
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @WQE_SUCCESS, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %182

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124, %75, %43
  %126 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %127 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %126, i32 0, i32 5
  %128 = load i64, i64* %12, align 8
  %129 = call i32 @spin_lock_irqsave(i32* %127, i64 %128)
  %130 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %131 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @LPFC_NVMET_CTX_RLS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %125
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = call i32 @spin_lock(i32* %139)
  %141 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %142 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %141, i32 0, i32 6
  %143 = call i32 @list_del_init(i32* %142)
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock(i32* %146)
  store i32 1, i32* %13, align 4
  br label %148

148:                                              ; preds = %136, %125
  %149 = load i32, i32* @LPFC_NVMET_ABORT_OP, align 4
  %150 = load i32, i32* @LPFC_NVMET_CTX_RLS, align 4
  %151 = or i32 %149, %150
  %152 = xor i32 %151, -1
  %153 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %154 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %158 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %157, i32 0, i32 5
  %159 = load i64, i64* %12, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %158, i64 %159)
  %161 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %10, align 8
  %162 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %161, i32 0, i32 0
  %163 = call i32 @atomic_inc(i32* %162)
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %165 = load i32, i32* @KERN_ERR, align 4
  %166 = load i32, i32* @LOG_NVME_ABTS, align 4
  %167 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %168 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %164, i32 %165, i32 %166, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %148
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %177 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %178 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %177, i32 0, i32 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = call i32 @lpfc_nvmet_ctxbuf_post(%struct.lpfc_hba* %176, %struct.TYPE_6__* %179)
  br label %181

181:                                              ; preds = %175, %148
  store i32 1, i32* %5, align 4
  br label %182

182:                                              ; preds = %181, %123
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_nvmet_unsol_issue_abort(%struct.lpfc_hba*, %struct.lpfc_nvmet_rcv_ctx*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lpfc_sli4_issue_wqe(%struct.lpfc_hba*, i32*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lpfc_nvmet_ctxbuf_post(%struct.lpfc_hba*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
