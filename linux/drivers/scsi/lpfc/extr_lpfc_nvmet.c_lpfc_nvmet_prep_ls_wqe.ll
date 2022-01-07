; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_prep_ls_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvmet.c_lpfc_nvmet_prep_ls_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_iocbq = type { i32, i32, i32, i32*, %struct.lpfc_nvmet_rcv_ctx*, i32, i64, i32, %union.lpfc_wqe128, i32* }
%union.lpfc_wqe128 = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.lpfc_hba = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.lpfc_nvmet_rcv_ctx = type { i32, %struct.lpfc_iocbq*, i32, i32 }
%struct.lpfc_nodelist = type { i64, i64, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NVME_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"6104 NVMET prep LS wqe: link err: NPORT x%x oxid:x%x ste %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"6105 NVMET prep LS wqe: No WQE: NPORT x%x oxid x%x ste %d\0A\00", align 1
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"6106 NVMET prep LS wqe: No ndlp: NPORT x%x oxid x%x ste %d\0A\00", align 1
@BUFF_TYPE_BDE_64 = common dso_local global i32 0, align 4
@wqe_dfctl = common dso_local global i32 0, align 4
@wqe_ls = common dso_local global i32 0, align 4
@wqe_la = common dso_local global i32 0, align 4
@wqe_rctl = common dso_local global i32 0, align 4
@FC_RCTL_ELS4_REP = common dso_local global i32 0, align 4
@wqe_type = common dso_local global i32 0, align 4
@FC_TYPE_NVME = common dso_local global i32 0, align 4
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
@wqe_cqid = common dso_local global i32 0, align 4
@LPFC_WQE_CQ_ID_DEFAULT = common dso_local global i32 0, align 4
@wqe_cmd_type = common dso_local global i32 0, align 4
@OTHER_COMMAND = common dso_local global i32 0, align 4
@LPFC_DRVR_TIMEOUT = common dso_local global i64 0, align 8
@LPFC_IO_NVME_LS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"6039 Xmit NVMET LS response to remote NPORT x%x iotag:x%x oxid:x%x size:x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_iocbq* (%struct.lpfc_hba*, %struct.lpfc_nvmet_rcv_ctx*, i32, i8*)* @lpfc_nvmet_prep_ls_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_iocbq* @lpfc_nvmet_prep_ls_wqe(%struct.lpfc_hba* %0, %struct.lpfc_nvmet_rcv_ctx* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_nvmet_rcv_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %union.lpfc_wqe128*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.lpfc_nvmet_rcv_ctx* %1, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %14 = call i32 @lpfc_is_link_up(%struct.lpfc_hba* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %4
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %18 = load i32, i32* @KERN_ERR, align 4
  %19 = load i32, i32* @LOG_NVME_DISC, align 4
  %20 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %5, align 8
  br label %315

30:                                               ; preds = %4
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %32 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %31)
  store %struct.lpfc_iocbq* %32, %struct.lpfc_iocbq** %11, align 8
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %34 = icmp eq %struct.lpfc_iocbq* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %37 = load i32, i32* @KERN_ERR, align 4
  %38 = load i32, i32* @LOG_NVME_DISC, align 4
  %39 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %47)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %5, align 8
  br label %315

49:                                               ; preds = %30
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.lpfc_nodelist* @lpfc_findnode_did(i32 %52, i32 %55)
  store %struct.lpfc_nodelist* %56, %struct.lpfc_nodelist** %10, align 8
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %58 = icmp ne %struct.lpfc_nodelist* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %49
  %60 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %61 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %65 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %71 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69, %59, %49
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %77 = load i32, i32* @KERN_ERR, align 4
  %78 = load i32, i32* @LOG_NVME_DISC, align 4
  %79 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %80 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %83 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %86 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %84, i32 %87)
  br label %307

89:                                               ; preds = %69, %63
  %90 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %91 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %92 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %91, i32 0, i32 1
  store %struct.lpfc_iocbq* %90, %struct.lpfc_iocbq** %92, align 8
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %94 = call i32* @lpfc_nlp_get(%struct.lpfc_nodelist* %93)
  %95 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %96 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %95, i32 0, i32 9
  store i32* %94, i32** %96, align 8
  %97 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %98 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %97, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %307

102:                                              ; preds = %89
  %103 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %104 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %105 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %104, i32 0, i32 4
  store %struct.lpfc_nvmet_rcv_ctx* %103, %struct.lpfc_nvmet_rcv_ctx** %105, align 8
  %106 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %107 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %106, i32 0, i32 8
  store %union.lpfc_wqe128* %107, %union.lpfc_wqe128** %12, align 8
  %108 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %109 = call i32 @memset(%union.lpfc_wqe128* %108, i32 0, i32 4)
  %110 = load i32, i32* @BUFF_TYPE_BDE_64, align 4
  %111 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %112 = bitcast %union.lpfc_wqe128* %111 to %struct.TYPE_11__*
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 %110, i32* %116, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %119 = bitcast %union.lpfc_wqe128* %118 to %struct.TYPE_11__*
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i8* %117, i8** %123, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @putPaddrLow(i32 %124)
  %126 = call i8* @le32_to_cpu(i32 %125)
  %127 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %128 = bitcast %union.lpfc_wqe128* %127 to %struct.TYPE_11__*
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  store i8* %126, i8** %130, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @putPaddrHigh(i32 %131)
  %133 = call i8* @le32_to_cpu(i32 %132)
  %134 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %135 = bitcast %union.lpfc_wqe128* %134 to %struct.TYPE_11__*
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i8* %133, i8** %137, align 8
  %138 = load i32, i32* @wqe_dfctl, align 4
  %139 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %140 = bitcast %union.lpfc_wqe128* %139 to %struct.TYPE_11__*
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = call i32 @bf_set(i32 %138, %struct.TYPE_12__* %141, i32 0)
  %143 = load i32, i32* @wqe_ls, align 4
  %144 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %145 = bitcast %union.lpfc_wqe128* %144 to %struct.TYPE_11__*
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = call i32 @bf_set(i32 %143, %struct.TYPE_12__* %146, i32 1)
  %148 = load i32, i32* @wqe_la, align 4
  %149 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %150 = bitcast %union.lpfc_wqe128* %149 to %struct.TYPE_11__*
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = call i32 @bf_set(i32 %148, %struct.TYPE_12__* %151, i32 0)
  %153 = load i32, i32* @wqe_rctl, align 4
  %154 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %155 = bitcast %union.lpfc_wqe128* %154 to %struct.TYPE_11__*
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i32, i32* @FC_RCTL_ELS4_REP, align 4
  %158 = call i32 @bf_set(i32 %153, %struct.TYPE_12__* %156, i32 %157)
  %159 = load i32, i32* @wqe_type, align 4
  %160 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %161 = bitcast %union.lpfc_wqe128* %160 to %struct.TYPE_11__*
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load i32, i32* @FC_TYPE_NVME, align 4
  %164 = call i32 @bf_set(i32 %159, %struct.TYPE_12__* %162, i32 %163)
  %165 = load i32, i32* @wqe_ctxt_tag, align 4
  %166 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %167 = bitcast %union.lpfc_wqe128* %166 to %struct.TYPE_11__*
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %174 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @bf_set(i32 %165, %struct.TYPE_12__* %168, i32 %177)
  %179 = load i32, i32* @wqe_xri_tag, align 4
  %180 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %181 = bitcast %union.lpfc_wqe128* %180 to %struct.TYPE_11__*
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %184 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @bf_set(i32 %179, %struct.TYPE_12__* %182, i32 %185)
  %187 = load i32, i32* @wqe_cmnd, align 4
  %188 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %189 = bitcast %union.lpfc_wqe128* %188 to %struct.TYPE_11__*
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load i32, i32* @CMD_XMIT_SEQUENCE64_WQE, align 4
  %192 = call i32 @bf_set(i32 %187, %struct.TYPE_12__* %190, i32 %191)
  %193 = load i32, i32* @wqe_ct, align 4
  %194 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %195 = bitcast %union.lpfc_wqe128* %194 to %struct.TYPE_11__*
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i32, i32* @SLI4_CT_RPI, align 4
  %198 = call i32 @bf_set(i32 %193, %struct.TYPE_12__* %196, i32 %197)
  %199 = load i32, i32* @wqe_class, align 4
  %200 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %201 = bitcast %union.lpfc_wqe128* %200 to %struct.TYPE_11__*
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  %203 = load i32, i32* @CLASS3, align 4
  %204 = call i32 @bf_set(i32 %199, %struct.TYPE_12__* %202, i32 %203)
  %205 = load i32, i32* @wqe_pu, align 4
  %206 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %207 = bitcast %union.lpfc_wqe128* %206 to %struct.TYPE_11__*
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = call i32 @bf_set(i32 %205, %struct.TYPE_12__* %208, i32 0)
  %210 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %211 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %214 = bitcast %union.lpfc_wqe128* %213 to %struct.TYPE_11__*
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  store i32 %212, i32* %216, align 8
  %217 = load i32, i32* @wqe_reqtag, align 4
  %218 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %219 = bitcast %union.lpfc_wqe128* %218 to %struct.TYPE_11__*
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %222 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @bf_set(i32 %217, %struct.TYPE_12__* %220, i32 %223)
  %225 = load i32, i32* @wqe_rcvoxid, align 4
  %226 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %227 = bitcast %union.lpfc_wqe128* %226 to %struct.TYPE_11__*
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %230 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @bf_set(i32 %225, %struct.TYPE_12__* %228, i32 %231)
  %233 = load i32, i32* @wqe_dbde, align 4
  %234 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %235 = bitcast %union.lpfc_wqe128* %234 to %struct.TYPE_11__*
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = call i32 @bf_set(i32 %233, %struct.TYPE_12__* %236, i32 1)
  %238 = load i32, i32* @wqe_iod, align 4
  %239 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %240 = bitcast %union.lpfc_wqe128* %239 to %struct.TYPE_11__*
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load i32, i32* @LPFC_WQE_IOD_WRITE, align 4
  %243 = call i32 @bf_set(i32 %238, %struct.TYPE_12__* %241, i32 %242)
  %244 = load i32, i32* @wqe_lenloc, align 4
  %245 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %246 = bitcast %union.lpfc_wqe128* %245 to %struct.TYPE_11__*
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 1
  %248 = load i32, i32* @LPFC_WQE_LENLOC_WORD12, align 4
  %249 = call i32 @bf_set(i32 %244, %struct.TYPE_12__* %247, i32 %248)
  %250 = load i32, i32* @wqe_ebde_cnt, align 4
  %251 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %252 = bitcast %union.lpfc_wqe128* %251 to %struct.TYPE_11__*
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 1
  %254 = call i32 @bf_set(i32 %250, %struct.TYPE_12__* %253, i32 0)
  %255 = load i32, i32* @wqe_cqid, align 4
  %256 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %257 = bitcast %union.lpfc_wqe128* %256 to %struct.TYPE_11__*
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = load i32, i32* @LPFC_WQE_CQ_ID_DEFAULT, align 4
  %260 = call i32 @bf_set(i32 %255, %struct.TYPE_12__* %258, i32 %259)
  %261 = load i32, i32* @wqe_cmd_type, align 4
  %262 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %263 = bitcast %union.lpfc_wqe128* %262 to %struct.TYPE_11__*
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i32, i32* @OTHER_COMMAND, align 4
  %266 = call i32 @bf_set(i32 %261, %struct.TYPE_12__* %264, i32 %265)
  %267 = load i8*, i8** %9, align 8
  %268 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %12, align 8
  %269 = bitcast %union.lpfc_wqe128* %268 to %struct.TYPE_11__*
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  store i8* %267, i8** %270, align 8
  %271 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %272 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %271, i32 0, i32 2
  store i32 1, i32* %272, align 8
  %273 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %274 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %277 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %276, i32 0, i32 7
  store i32 %275, i32* %277, align 8
  %278 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %279 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = mul nsw i32 %280, 3
  %282 = sext i32 %281 to i64
  %283 = load i64, i64* @LPFC_DRVR_TIMEOUT, align 8
  %284 = add nsw i64 %282, %283
  %285 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %286 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %285, i32 0, i32 6
  store i64 %284, i64* %286, align 8
  %287 = load i32, i32* @LPFC_IO_NVME_LS, align 4
  %288 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %289 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  %292 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %293 = load i32, i32* @KERN_INFO, align 4
  %294 = load i32, i32* @LOG_NVME_DISC, align 4
  %295 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %296 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %299 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.lpfc_nvmet_rcv_ctx*, %struct.lpfc_nvmet_rcv_ctx** %7, align 8
  %302 = getelementptr inbounds %struct.lpfc_nvmet_rcv_ctx, %struct.lpfc_nvmet_rcv_ctx* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i8*, i8** %9, align 8
  %305 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %292, i32 %293, i32 %294, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32 %297, i32 %300, i32 %303, i8* %304)
  %306 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  store %struct.lpfc_iocbq* %306, %struct.lpfc_iocbq** %5, align 8
  br label %315

307:                                              ; preds = %101, %75
  %308 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %309 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %308, i32 0, i32 4
  store %struct.lpfc_nvmet_rcv_ctx* null, %struct.lpfc_nvmet_rcv_ctx** %309, align 8
  %310 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %311 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %310, i32 0, i32 3
  store i32* null, i32** %311, align 8
  %312 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %313 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %314 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %312, %struct.lpfc_iocbq* %313)
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %5, align 8
  br label %315

315:                                              ; preds = %307, %102, %35, %16
  %316 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  ret %struct.lpfc_iocbq* %316
}

declare dso_local i32 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(i32, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32* @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(%union.lpfc_wqe128*, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @bf_set(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
