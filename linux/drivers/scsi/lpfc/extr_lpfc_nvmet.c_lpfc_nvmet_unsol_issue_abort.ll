; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_unsol_issue_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_unsol_issue_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_nvmet_rcv_ctx = type { %struct.lpfc_iocbq* }
%struct.lpfc_iocbq = type { i32, i32, %struct.TYPE_9__, i64, i32*, %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nodelist*, i32, %union.lpfc_wqe128 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.lpfc_nodelist = type { i64, i64 }
%union.lpfc_wqe128 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_nvmet_tgtport = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_ABTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"6067 ABTS: sid %x xri x%x/x%x\0A\00", align 1
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"6134 Drop ABTS - wrong NDLP state x%x.\0A\00", align 1
@NLP_STE_MAX_STATE = common dso_local global i64 0, align 8
@wqe_dfctl = common dso_local global i32 0, align 4
@wqe_ls = common dso_local global i32 0, align 4
@wqe_la = common dso_local global i32 0, align 4
@wqe_rctl = common dso_local global i32 0, align 4
@FC_RCTL_BA_ABTS = common dso_local global i32 0, align 4
@wqe_type = common dso_local global i32 0, align 4
@FC_TYPE_BLS = common dso_local global i32 0, align 4
@wqe_ctxt_tag = common dso_local global i32 0, align 4
@wqe_xri_tag = common dso_local global i32 0, align 4
@wqe_cmnd = common dso_local global i32 0, align 4
@CMD_XMIT_SEQUENCE64_WQE = common dso_local global i32 0, align 4
@wqe_ct = common dso_local global i32 0, align 4
@SLI4_CT_RPI = common dso_local global i32 0, align 4
@wqe_class = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@wqe_pu = common dso_local global i32 0, align 4
@wqe_reqtag = common dso_local global i32 0, align 4
@wqe_rcvoxid = common dso_local global i32 0, align 4
@wqe_dbde = common dso_local global i32 0, align 4
@wqe_iod = common dso_local global i32 0, align 4
@LPFC_WQE_IOD_WRITE = common dso_local global i32 0, align 4
@wqe_lenloc = common dso_local global i32 0, align 4
@LPFC_WQE_LENLOC_WORD12 = common dso_local global i32 0, align 4
@wqe_ebde_cnt = common dso_local global i32 0, align 4
@wqe_qosd = common dso_local global i32 0, align 4
@wqe_cqid = common dso_local global i32 0, align 4
@LPFC_WQE_CQ_ID_DEFAULT = common dso_local global i32 0, align 4
@wqe_cmd_type = common dso_local global i32 0, align 4
@OTHER_COMMAND = common dso_local global i32 0, align 4
@CMD_XMIT_SEQUENCE64_CR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"6069 Issue ABTS to xri x%x reqtag x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_nvmet_rcv_ctx*, i32, i32)* @lpfc_nvmet_unsol_issue_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nvmet_unsol_issue_abort(%struct.lpfc_hba* %0, %struct.lpfc_nvmet_rcv_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_nvmet_rcv_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_nvmet_tgtport*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %union.lpfc_wqe128*, align 8
  %13 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.lpfc_nvmet_rcv_ctx* %1, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load i32, i32* @LOG_NVME_ABTS, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %19, i32 0, i32 0
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %20, align 8
  %22 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %23)
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.lpfc_nvmet_tgtport*
  store %struct.lpfc_nvmet_tgtport* %30, %struct.lpfc_nvmet_tgtport** %10, align 8
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.lpfc_nodelist* @lpfc_findnode_did(i32 %33, i32 %34)
  store %struct.lpfc_nodelist* %35, %struct.lpfc_nodelist** %13, align 8
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %37 = icmp ne %struct.lpfc_nodelist* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %4
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %40 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %44 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %42
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %50 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %48, %38, %4
  %55 = load %struct.lpfc_nvmet_tgtport*, %struct.lpfc_nvmet_tgtport** %10, align 8
  %56 = getelementptr inbounds %struct.lpfc_nvmet_tgtport, %struct.lpfc_nvmet_tgtport* %55, i32 0, i32 0
  %57 = call i32 @atomic_inc(i32* %56)
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = load i32, i32* @LOG_NVME_ABTS, align 4
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %62 = icmp ne %struct.lpfc_nodelist* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %65 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  br label %69

67:                                               ; preds = %54
  %68 = load i64, i64* @NLP_STE_MAX_STATE, align 8
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i64 [ %66, %63 ], [ %68, %67 ]
  %71 = trunc i64 %70 to i32
  %72 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 0, i32* %5, align 4
  br label %243

73:                                               ; preds = %48, %42
  %74 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %75 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %74, i32 0, i32 0
  %76 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %75, align 8
  store %struct.lpfc_iocbq* %76, %struct.lpfc_iocbq** %11, align 8
  %77 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %78 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %77, i32 0, i32 8
  store %union.lpfc_wqe128* %78, %union.lpfc_wqe128** %12, align 8
  %79 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %80 = call i32 @memset(%union.lpfc_wqe128* %79, i32 0, i32 4)
  %81 = load i32, i32* @wqe_dfctl, align 4
  %82 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %83 = bitcast %union.lpfc_wqe128* %82 to %struct.TYPE_8__*
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = call i32 @bf_set(i32 %81, %struct.TYPE_10__* %84, i32 0)
  %86 = load i32, i32* @wqe_ls, align 4
  %87 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %88 = bitcast %union.lpfc_wqe128* %87 to %struct.TYPE_8__*
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = call i32 @bf_set(i32 %86, %struct.TYPE_10__* %89, i32 1)
  %91 = load i32, i32* @wqe_la, align 4
  %92 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %93 = bitcast %union.lpfc_wqe128* %92 to %struct.TYPE_8__*
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = call i32 @bf_set(i32 %91, %struct.TYPE_10__* %94, i32 0)
  %96 = load i32, i32* @wqe_rctl, align 4
  %97 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %98 = bitcast %union.lpfc_wqe128* %97 to %struct.TYPE_8__*
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* @FC_RCTL_BA_ABTS, align 4
  %101 = call i32 @bf_set(i32 %96, %struct.TYPE_10__* %99, i32 %100)
  %102 = load i32, i32* @wqe_type, align 4
  %103 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %104 = bitcast %union.lpfc_wqe128* %103 to %struct.TYPE_8__*
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* @FC_TYPE_BLS, align 4
  %107 = call i32 @bf_set(i32 %102, %struct.TYPE_10__* %105, i32 %106)
  %108 = load i32, i32* @wqe_ctxt_tag, align 4
  %109 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %110 = bitcast %union.lpfc_wqe128* %109 to %struct.TYPE_8__*
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %117 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bf_set(i32 %108, %struct.TYPE_10__* %111, i32 %120)
  %122 = load i32, i32* @wqe_xri_tag, align 4
  %123 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %124 = bitcast %union.lpfc_wqe128* %123 to %struct.TYPE_8__*
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %127 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bf_set(i32 %122, %struct.TYPE_10__* %125, i32 %128)
  %130 = load i32, i32* @wqe_cmnd, align 4
  %131 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %132 = bitcast %union.lpfc_wqe128* %131 to %struct.TYPE_8__*
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* @CMD_XMIT_SEQUENCE64_WQE, align 4
  %135 = call i32 @bf_set(i32 %130, %struct.TYPE_10__* %133, i32 %134)
  %136 = load i32, i32* @wqe_ct, align 4
  %137 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %138 = bitcast %union.lpfc_wqe128* %137 to %struct.TYPE_8__*
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* @SLI4_CT_RPI, align 4
  %141 = call i32 @bf_set(i32 %136, %struct.TYPE_10__* %139, i32 %140)
  %142 = load i32, i32* @wqe_class, align 4
  %143 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %144 = bitcast %union.lpfc_wqe128* %143 to %struct.TYPE_8__*
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* @CLASS3, align 4
  %147 = call i32 @bf_set(i32 %142, %struct.TYPE_10__* %145, i32 %146)
  %148 = load i32, i32* @wqe_pu, align 4
  %149 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %150 = bitcast %union.lpfc_wqe128* %149 to %struct.TYPE_8__*
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = call i32 @bf_set(i32 %148, %struct.TYPE_10__* %151, i32 0)
  %153 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %154 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %157 = bitcast %union.lpfc_wqe128* %156 to %struct.TYPE_8__*
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* @wqe_reqtag, align 4
  %161 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %162 = bitcast %union.lpfc_wqe128* %161 to %struct.TYPE_8__*
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %165 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @bf_set(i32 %160, %struct.TYPE_10__* %163, i32 %166)
  %168 = load i32, i32* @wqe_rcvoxid, align 4
  %169 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %170 = bitcast %union.lpfc_wqe128* %169 to %struct.TYPE_8__*
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @bf_set(i32 %168, %struct.TYPE_10__* %171, i32 %172)
  %174 = load i32, i32* @wqe_dbde, align 4
  %175 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %176 = bitcast %union.lpfc_wqe128* %175 to %struct.TYPE_8__*
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = call i32 @bf_set(i32 %174, %struct.TYPE_10__* %177, i32 1)
  %179 = load i32, i32* @wqe_iod, align 4
  %180 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %181 = bitcast %union.lpfc_wqe128* %180 to %struct.TYPE_8__*
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* @LPFC_WQE_IOD_WRITE, align 4
  %184 = call i32 @bf_set(i32 %179, %struct.TYPE_10__* %182, i32 %183)
  %185 = load i32, i32* @wqe_lenloc, align 4
  %186 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %187 = bitcast %union.lpfc_wqe128* %186 to %struct.TYPE_8__*
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* @LPFC_WQE_LENLOC_WORD12, align 4
  %190 = call i32 @bf_set(i32 %185, %struct.TYPE_10__* %188, i32 %189)
  %191 = load i32, i32* @wqe_ebde_cnt, align 4
  %192 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %193 = bitcast %union.lpfc_wqe128* %192 to %struct.TYPE_8__*
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = call i32 @bf_set(i32 %191, %struct.TYPE_10__* %194, i32 0)
  %196 = load i32, i32* @wqe_qosd, align 4
  %197 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %198 = bitcast %union.lpfc_wqe128* %197 to %struct.TYPE_8__*
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = call i32 @bf_set(i32 %196, %struct.TYPE_10__* %199, i32 0)
  %201 = load i32, i32* @wqe_cqid, align 4
  %202 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %203 = bitcast %union.lpfc_wqe128* %202 to %struct.TYPE_8__*
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i32, i32* @LPFC_WQE_CQ_ID_DEFAULT, align 4
  %206 = call i32 @bf_set(i32 %201, %struct.TYPE_10__* %204, i32 %205)
  %207 = load i32, i32* @wqe_cmd_type, align 4
  %208 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %209 = bitcast %union.lpfc_wqe128* %208 to %struct.TYPE_8__*
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* @OTHER_COMMAND, align 4
  %212 = call i32 @bf_set(i32 %207, %struct.TYPE_10__* %210, i32 %211)
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %217 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %216, i32 0, i32 7
  store i32 %215, i32* %217, align 8
  %218 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %219 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %220 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %219, i32 0, i32 6
  store %struct.lpfc_nodelist* %218, %struct.lpfc_nodelist** %220, align 8
  %221 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %222 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %223 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %222, i32 0, i32 5
  store %struct.lpfc_nvmet_rcv_ctx* %221, %struct.lpfc_nvmet_rcv_ctx** %223, align 8
  %224 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %225 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %224, i32 0, i32 4
  store i32* null, i32** %225, align 8
  %226 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %227 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %226, i32 0, i32 3
  store i64 0, i64* %227, align 8
  %228 = load i32, i32* @CMD_XMIT_SEQUENCE64_CR, align 4
  %229 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %230 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  %232 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %233 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  store i32 1, i32* %234, align 8
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %236 = load i32, i32* @KERN_INFO, align 4
  %237 = load i32, i32* @LOG_NVME_ABTS, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %240 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %235, i32 %236, i32 %237, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %238, i32 %241)
  store i32 1, i32* %5, align 4
  br label %243

243:                                              ; preds = %73, %69
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(i32, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(%union.lpfc_wqe128*, i32, i32) #1

declare dso_local i32 @bf_set(i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
