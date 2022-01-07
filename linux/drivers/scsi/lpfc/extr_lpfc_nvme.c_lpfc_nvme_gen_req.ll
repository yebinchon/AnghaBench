; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_gen_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_gen_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.lpfc_dmabuf = type { i64 }
%struct.nvmefc_ls_req = type { i32 }
%struct.lpfc_iocbq = type { i32, i32, i32, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*)*, i32, %struct.lpfc_vport*, i64, i32*, i64, i32*, i32, i32, i32*, %union.lpfc_wqe128 }
%struct.lpfc_wcqe_complete = type opaque
%union.lpfc_wqe128 = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.lpfc_wcqe_complete.0 = type opaque
%struct.lpfc_nodelist = type { i64, i32 }
%struct.ulp_bde64 = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@LPFC_IO_NVME_LS = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64 = common dso_local global i64 0, align 8
@wqe_dfctl = common dso_local global i32 0, align 4
@wqe_si = common dso_local global i32 0, align 4
@wqe_la = common dso_local global i32 0, align 4
@wqe_rctl = common dso_local global i32 0, align 4
@FC_RCTL_ELS4_REQ = common dso_local global i32 0, align 4
@wqe_type = common dso_local global i32 0, align 4
@FC_TYPE_NVME = common dso_local global i32 0, align 4
@wqe_ctxt_tag = common dso_local global i32 0, align 4
@wqe_xri_tag = common dso_local global i32 0, align 4
@wqe_tmo = common dso_local global i32 0, align 4
@wqe_class = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@wqe_cmnd = common dso_local global i32 0, align 4
@CMD_GEN_REQUEST64_WQE = common dso_local global i32 0, align 4
@wqe_ct = common dso_local global i32 0, align 4
@SLI4_CT_RPI = common dso_local global i32 0, align 4
@wqe_reqtag = common dso_local global i32 0, align 4
@wqe_dbde = common dso_local global i32 0, align 4
@wqe_iod = common dso_local global i32 0, align 4
@LPFC_WQE_IOD_READ = common dso_local global i32 0, align 4
@wqe_qosd = common dso_local global i32 0, align 4
@wqe_lenloc = common dso_local global i32 0, align 4
@LPFC_WQE_LENLOC_NONE = common dso_local global i32 0, align 4
@wqe_ebde_cnt = common dso_local global i32 0, align 4
@wqe_cqid = common dso_local global i32 0, align 4
@LPFC_WQE_CQ_ID_DEFAULT = common dso_local global i32 0, align 4
@wqe_cmd_type = common dso_local global i32 0, align 4
@OTHER_COMMAND = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"6050 Issue GEN REQ WQE to NPORT x%x Data: x%x x%x wq:x%px lsreq:x%px bmp:x%px xmit:%d 1st:%d\0A\00", align 1
@LPFC_DRVR_TIMEOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"NVME LS  XMIT: xri x%x iotag x%x to x%06x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"6045 Issue GEN REQ WQE to NPORT x%x Data: x%x x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.nvmefc_ls_req*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete.0*)*, %struct.lpfc_nodelist*, i32, i32, i32)* @lpfc_nvme_gen_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nvme_gen_req(%struct.lpfc_vport* %0, %struct.lpfc_dmabuf* %1, %struct.lpfc_dmabuf* %2, %struct.nvmefc_ls_req* %3, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete.0*)* %4, %struct.lpfc_nodelist* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_vport*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.nvmefc_ls_req*, align 8
  %15 = alloca void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete.0*)*, align 8
  %16 = alloca %struct.lpfc_nodelist*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.lpfc_hba*, align 8
  %21 = alloca %union.lpfc_wqe128*, align 8
  %22 = alloca %struct.lpfc_iocbq*, align 8
  %23 = alloca %struct.ulp_bde64*, align 8
  %24 = alloca %struct.ulp_bde64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_dmabuf* %1, %struct.lpfc_dmabuf** %12, align 8
  store %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf** %13, align 8
  store %struct.nvmefc_ls_req* %3, %struct.nvmefc_ls_req** %14, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete.0*)* %4, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete.0*)** %15, align 8
  store %struct.lpfc_nodelist* %5, %struct.lpfc_nodelist** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %30 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %29, i32 0, i32 1
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %30, align 8
  store %struct.lpfc_hba* %31, %struct.lpfc_hba** %20, align 8
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  %33 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %32)
  store %struct.lpfc_iocbq* %33, %struct.lpfc_iocbq** %22, align 8
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %35 = icmp eq %struct.lpfc_iocbq* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %9
  store i32 1, i32* %10, align 4
  br label %356

37:                                               ; preds = %9
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %39 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %38, i32 0, i32 13
  store %union.lpfc_wqe128* %39, %union.lpfc_wqe128** %21, align 8
  %40 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %41 = call i32 @memset(%union.lpfc_wqe128* %40, i32 0, i32 4)
  %42 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %43 = bitcast %struct.lpfc_dmabuf* %42 to i32*
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %45 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %44, i32 0, i32 12
  store i32* %43, i32** %45, align 8
  %46 = load i32, i32* @LPFC_IO_NVME_LS, align 4
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %52 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %51)
  %53 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %54 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 8
  %55 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %14, align 8
  %56 = bitcast %struct.nvmefc_ls_req* %55 to i32*
  %57 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %58 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %57, i32 0, i32 9
  store i32* %56, i32** %58, align 8
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %37
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 3, %64
  store i32 %65, i32* %18, align 4
  br label %66

66:                                               ; preds = %61, %37
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %68 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %70, %struct.ulp_bde64** %23, align 8
  store i32 0, i32* %25, align 4
  br label %71

71:                                               ; preds = %106, %66
  %72 = load i32, i32* %25, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %71
  %76 = load %struct.ulp_bde64*, %struct.ulp_bde64** %23, align 8
  %77 = load i32, i32* %25, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %76, i64 %78
  %80 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %24, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %24, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @BUFF_TYPE_BDE_64, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  br label %109

92:                                               ; preds = %75
  %93 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %24, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %27, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %27, align 4
  %101 = load i32, i32* %25, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = load i32, i32* %27, align 4
  store i32 %104, i32* %28, align 4
  br label %105

105:                                              ; preds = %103, %92
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %25, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %25, align 4
  br label %71

109:                                              ; preds = %91, %71
  %110 = load i32, i32* %17, align 4
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %112 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %114 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %113, i32 0, i32 8
  store i64 0, i64* %114, align 8
  %115 = load i64, i64* @BUFF_TYPE_BDE_64, align 8
  %116 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %117 = bitcast %union.lpfc_wqe128* %116 to %struct.TYPE_15__*
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  store i64 %115, i64* %121, align 8
  %122 = load i32, i32* %28, align 4
  %123 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %124 = bitcast %union.lpfc_wqe128* %123 to %struct.TYPE_15__*
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i32 %122, i32* %128, align 8
  %129 = load %struct.ulp_bde64*, %struct.ulp_bde64** %23, align 8
  %130 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %129, i64 0
  %131 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %134 = bitcast %union.lpfc_wqe128* %133 to %struct.TYPE_15__*
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  store i32 %132, i32* %136, align 4
  %137 = load %struct.ulp_bde64*, %struct.ulp_bde64** %23, align 8
  %138 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %137, i64 0
  %139 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %142 = bitcast %union.lpfc_wqe128* %141 to %struct.TYPE_15__*
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  store i32 %140, i32* %144, align 8
  %145 = load i32, i32* %28, align 4
  %146 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %147 = bitcast %union.lpfc_wqe128* %146 to %struct.TYPE_17__*
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  store i32 %145, i32* %148, align 8
  %149 = load i32, i32* @wqe_dfctl, align 4
  %150 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %151 = bitcast %union.lpfc_wqe128* %150 to %struct.TYPE_17__*
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  %153 = call i32 @bf_set(i32 %149, %struct.TYPE_18__* %152, i32 0)
  %154 = load i32, i32* @wqe_si, align 4
  %155 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %156 = bitcast %union.lpfc_wqe128* %155 to %struct.TYPE_17__*
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 2
  %158 = call i32 @bf_set(i32 %154, %struct.TYPE_18__* %157, i32 1)
  %159 = load i32, i32* @wqe_la, align 4
  %160 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %161 = bitcast %union.lpfc_wqe128* %160 to %struct.TYPE_17__*
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = call i32 @bf_set(i32 %159, %struct.TYPE_18__* %162, i32 1)
  %164 = load i32, i32* @wqe_rctl, align 4
  %165 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %166 = bitcast %union.lpfc_wqe128* %165 to %struct.TYPE_17__*
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = load i32, i32* @FC_RCTL_ELS4_REQ, align 4
  %169 = call i32 @bf_set(i32 %164, %struct.TYPE_18__* %167, i32 %168)
  %170 = load i32, i32* @wqe_type, align 4
  %171 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %172 = bitcast %union.lpfc_wqe128* %171 to %struct.TYPE_17__*
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load i32, i32* @FC_TYPE_NVME, align 4
  %175 = call i32 @bf_set(i32 %170, %struct.TYPE_18__* %173, i32 %174)
  %176 = load i32, i32* @wqe_ctxt_tag, align 4
  %177 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %178 = bitcast %union.lpfc_wqe128* %177 to %struct.TYPE_17__*
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %185 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @bf_set(i32 %176, %struct.TYPE_18__* %179, i32 %188)
  %190 = load i32, i32* @wqe_xri_tag, align 4
  %191 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %192 = bitcast %union.lpfc_wqe128* %191 to %struct.TYPE_17__*
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %195 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @bf_set(i32 %190, %struct.TYPE_18__* %193, i32 %196)
  %198 = load i32, i32* @wqe_tmo, align 4
  %199 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %200 = bitcast %union.lpfc_wqe128* %199 to %struct.TYPE_17__*
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %203 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %202, i32 0, i32 1
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %203, align 8
  %205 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, 1
  %208 = call i32 @bf_set(i32 %198, %struct.TYPE_18__* %201, i32 %207)
  %209 = load i32, i32* @wqe_class, align 4
  %210 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %211 = bitcast %union.lpfc_wqe128* %210 to %struct.TYPE_17__*
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = load i32, i32* @CLASS3, align 4
  %214 = call i32 @bf_set(i32 %209, %struct.TYPE_18__* %212, i32 %213)
  %215 = load i32, i32* @wqe_cmnd, align 4
  %216 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %217 = bitcast %union.lpfc_wqe128* %216 to %struct.TYPE_17__*
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load i32, i32* @CMD_GEN_REQUEST64_WQE, align 4
  %220 = call i32 @bf_set(i32 %215, %struct.TYPE_18__* %218, i32 %219)
  %221 = load i32, i32* @wqe_ct, align 4
  %222 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %223 = bitcast %union.lpfc_wqe128* %222 to %struct.TYPE_17__*
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 1
  %225 = load i32, i32* @SLI4_CT_RPI, align 4
  %226 = call i32 @bf_set(i32 %221, %struct.TYPE_18__* %224, i32 %225)
  %227 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %228 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %231 = bitcast %union.lpfc_wqe128* %230 to %struct.TYPE_17__*
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  store i32 %229, i32* %233, align 4
  %234 = load i32, i32* @wqe_reqtag, align 4
  %235 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %236 = bitcast %union.lpfc_wqe128* %235 to %struct.TYPE_17__*
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %239 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @bf_set(i32 %234, %struct.TYPE_18__* %237, i32 %240)
  %242 = load i32, i32* @wqe_dbde, align 4
  %243 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %244 = bitcast %union.lpfc_wqe128* %243 to %struct.TYPE_17__*
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  %246 = call i32 @bf_set(i32 %242, %struct.TYPE_18__* %245, i32 1)
  %247 = load i32, i32* @wqe_iod, align 4
  %248 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %249 = bitcast %union.lpfc_wqe128* %248 to %struct.TYPE_17__*
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  %251 = load i32, i32* @LPFC_WQE_IOD_READ, align 4
  %252 = call i32 @bf_set(i32 %247, %struct.TYPE_18__* %250, i32 %251)
  %253 = load i32, i32* @wqe_qosd, align 4
  %254 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %255 = bitcast %union.lpfc_wqe128* %254 to %struct.TYPE_17__*
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  %257 = call i32 @bf_set(i32 %253, %struct.TYPE_18__* %256, i32 1)
  %258 = load i32, i32* @wqe_lenloc, align 4
  %259 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %260 = bitcast %union.lpfc_wqe128* %259 to %struct.TYPE_17__*
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  %262 = load i32, i32* @LPFC_WQE_LENLOC_NONE, align 4
  %263 = call i32 @bf_set(i32 %258, %struct.TYPE_18__* %261, i32 %262)
  %264 = load i32, i32* @wqe_ebde_cnt, align 4
  %265 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %266 = bitcast %union.lpfc_wqe128* %265 to %struct.TYPE_17__*
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  %268 = call i32 @bf_set(i32 %264, %struct.TYPE_18__* %267, i32 0)
  %269 = load i32, i32* @wqe_cqid, align 4
  %270 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %271 = bitcast %union.lpfc_wqe128* %270 to %struct.TYPE_17__*
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 1
  %273 = load i32, i32* @LPFC_WQE_CQ_ID_DEFAULT, align 4
  %274 = call i32 @bf_set(i32 %269, %struct.TYPE_18__* %272, i32 %273)
  %275 = load i32, i32* @wqe_cmd_type, align 4
  %276 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %21, align 8
  %277 = bitcast %union.lpfc_wqe128* %276 to %struct.TYPE_17__*
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 1
  %279 = load i32, i32* @OTHER_COMMAND, align 4
  %280 = call i32 @bf_set(i32 %275, %struct.TYPE_18__* %278, i32 %279)
  %281 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %282 = load i32, i32* @KERN_INFO, align 4
  %283 = load i32, i32* @LOG_ELS, align 4
  %284 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %285 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %288 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %291 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %294 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %14, align 8
  %295 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %296 = load i32, i32* %27, align 4
  %297 = load i32, i32* %28, align 4
  %298 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %281, i32 %282, i32 %283, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %286, i32 %289, i32 %292, %struct.lpfc_iocbq* %293, %struct.nvmefc_ls_req* %294, %struct.lpfc_dmabuf* %295, i32 %296, i32 %297)
  %299 = load void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete.0*)*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete.0*)** %15, align 8
  %300 = bitcast void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete.0*)* %299 to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*)*
  %301 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %302 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %301, i32 0, i32 3
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*)* %300, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*)** %302, align 8
  %303 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %304 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %303, i32 0, i32 7
  store i32* null, i32** %304, align 8
  %305 = load i32, i32* %18, align 4
  %306 = sext i32 %305 to i64
  %307 = load i64, i64* @LPFC_DRVR_TIMEOUT, align 8
  %308 = add nsw i64 %306, %307
  %309 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %310 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %309, i32 0, i32 6
  store i64 %308, i64* %310, align 8
  %311 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %312 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %313 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %312, i32 0, i32 5
  store %struct.lpfc_vport* %311, %struct.lpfc_vport** %313, align 8
  %314 = load i32, i32* %19, align 4
  %315 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %316 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %315, i32 0, i32 4
  store i32 %314, i32* %316, align 8
  %317 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  %318 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %319 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %322 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %325 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @lpfc_nvmeio_data(%struct.lpfc_hba* %317, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %320, i32 %323, i32 %326)
  %328 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  %329 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  %330 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  %334 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %335 = call i32 @lpfc_sli4_issue_wqe(%struct.lpfc_hba* %328, i32* %333, %struct.lpfc_iocbq* %334)
  store i32 %335, i32* %26, align 4
  %336 = load i32, i32* %26, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %355

338:                                              ; preds = %109
  %339 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %340 = load i32, i32* @KERN_ERR, align 4
  %341 = load i32, i32* @LOG_ELS, align 4
  %342 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %16, align 8
  %343 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %346 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  %349 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %339, i32 %340, i32 %341, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %344, i32 %347, i32 %350)
  %352 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  %353 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %22, align 8
  %354 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %352, %struct.lpfc_iocbq* %353)
  store i32 1, i32* %10, align 4
  br label %356

355:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %356

356:                                              ; preds = %355, %338, %36
  %357 = load i32, i32* %10, align 4
  ret i32 %357
}

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @memset(%union.lpfc_wqe128*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @bf_set(i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_nvmeio_data(%struct.lpfc_hba*, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli4_issue_wqe(%struct.lpfc_hba*, i32*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
