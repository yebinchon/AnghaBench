; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_lcb_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_lcb_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_24__, i32*, i32* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_17__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.lpfc_iocbq = type { i8*, i64, %struct.TYPE_19__ }
%struct.lpfc_nodelist = type { i32 }
%struct.ls_rjt = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }
%union.lpfc_sli4_cfg_shdr = type { i32 }
%struct.lpfc_lcb_context = type { i32, i32, i32, i32, i32, i32, i32, %struct.lpfc_nodelist* }
%struct.fc_lcb_res_frame = type { i32, i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@lpfc_mbox_hdr_status = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_add_status = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"0194 SET_BEACON_CONFIG mailbox completed with status x%x add_status x%x, mbx status x%x\0A\00", align 1
@MBX_SUCCESS = common dso_local global i64 0, align 8
@ADD_STATUS_OPERATION_ALREADY_ACTIVE = common dso_local global i64 0, align 8
@ADD_STATUS_INVALID_REQUEST = common dso_local global i64 0, align 8
@lpfc_max_els_tries = common dso_local global i32 0, align 4
@ELS_CMD_ACC = common dso_local global i64 0, align 8
@lpfc_cmpl_els_rsp = common dso_local global i8* null, align 8
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@ELS_CMD_LS_RJT = common dso_local global i64 0, align 8
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_CMD_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_18__*)* @lpfc_els_lcb_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_els_lcb_rsp(%struct.lpfc_hba* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.ls_rjt*, align 8
  %11 = alloca %union.lpfc_sli4_cfg_shdr*, align 8
  %12 = alloca %struct.lpfc_lcb_context*, align 8
  %13 = alloca %struct.fc_lcb_res_frame*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 1
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = bitcast i32* %23 to %struct.lpfc_lcb_context*
  store %struct.lpfc_lcb_context* %24, %struct.lpfc_lcb_context** %12, align 8
  %25 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %26 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %25, i32 0, i32 7
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %26, align 8
  store %struct.lpfc_nodelist* %27, %struct.lpfc_nodelist** %9, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to %union.lpfc_sli4_cfg_shdr*
  store %union.lpfc_sli4_cfg_shdr* %39, %union.lpfc_sli4_cfg_shdr** %11, align 8
  %40 = load i32, i32* @lpfc_mbox_hdr_status, align 4
  %41 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %11, align 8
  %42 = bitcast %union.lpfc_sli4_cfg_shdr* %41 to i32*
  %43 = call i64 @bf_get(i32 %40, i32* %42)
  store i64 %43, i64* %15, align 8
  %44 = load i32, i32* @lpfc_mbox_hdr_add_status, align 4
  %45 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %11, align 8
  %46 = bitcast %union.lpfc_sli4_cfg_shdr* %45 to i32*
  %47 = call i64 @bf_get(i32 %44, i32* %46)
  store i64 %47, i64* %16, align 8
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = load i32, i32* @KERN_INFO, align 4
  %50 = load i32, i32* @LOG_MBOX, align 4
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i64 %51, i64 %52, i64 %55)
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MBX_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %73, label %62

62:                                               ; preds = %2
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @ADD_STATUS_OPERATION_ALREADY_ACTIVE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* @ADD_STATUS_INVALID_REQUEST, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %65, %62, %2
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mempool_free(%struct.TYPE_18__* %74, i32 %77)
  br label %182

79:                                               ; preds = %69
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mempool_free(%struct.TYPE_18__* %80, i32 %83)
  store i64 20, i64* %14, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %14, align 8
  %89 = load i32, i32* @lpfc_max_els_tries, align 4
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %91 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %92 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i64, i64* @ELS_CMD_ACC, align 8
  %95 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(i32 %87, i32 0, i64 %88, i32 %89, %struct.lpfc_nodelist* %90, i32 %93, i64 %94)
  store %struct.lpfc_iocbq* %95, %struct.lpfc_iocbq** %8, align 8
  %96 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %97 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %96)
  %98 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %99 = icmp ne %struct.lpfc_iocbq* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %79
  br label %262

101:                                              ; preds = %79
  %102 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %103 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.lpfc_dmabuf*
  %106 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to %struct.fc_lcb_res_frame*
  store %struct.fc_lcb_res_frame* %108, %struct.fc_lcb_res_frame** %13, align 8
  %109 = load %struct.fc_lcb_res_frame*, %struct.fc_lcb_res_frame** %13, align 8
  %110 = call i32 @memset(%struct.fc_lcb_res_frame* %109, i32 0, i32 20)
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %112 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %111, i32 0, i32 2
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %6, align 8
  %113 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %114 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %119 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 4
  %125 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %126 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.lpfc_dmabuf*
  %129 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  store i32* %131, i32** %7, align 8
  %132 = load i64, i64* @ELS_CMD_ACC, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = bitcast i32* %133 to i64*
  store i64 %132, i64* %134, align 8
  %135 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %136 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.fc_lcb_res_frame*, %struct.fc_lcb_res_frame** %13, align 8
  %139 = getelementptr inbounds %struct.fc_lcb_res_frame, %struct.fc_lcb_res_frame* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %141 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.fc_lcb_res_frame*, %struct.fc_lcb_res_frame** %13, align 8
  %144 = getelementptr inbounds %struct.fc_lcb_res_frame, %struct.fc_lcb_res_frame* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %146 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.fc_lcb_res_frame*, %struct.fc_lcb_res_frame** %13, align 8
  %149 = getelementptr inbounds %struct.fc_lcb_res_frame, %struct.fc_lcb_res_frame* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %151 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.fc_lcb_res_frame*, %struct.fc_lcb_res_frame** %13, align 8
  %154 = getelementptr inbounds %struct.fc_lcb_res_frame, %struct.fc_lcb_res_frame* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %156 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.fc_lcb_res_frame*, %struct.fc_lcb_res_frame** %13, align 8
  %159 = getelementptr inbounds %struct.fc_lcb_res_frame, %struct.fc_lcb_res_frame* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load i8*, i8** @lpfc_cmpl_els_rsp, align 8
  %161 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %162 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %169 = load i32, i32* @LPFC_ELS_RING, align 4
  %170 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %171 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %168, i32 %169, %struct.lpfc_iocbq* %170, i32 0)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* @IOCB_ERROR, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %101
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %177 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %178 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %176, %struct.lpfc_iocbq* %177)
  br label %179

179:                                              ; preds = %175, %101
  %180 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %181 = call i32 @kfree(%struct.lpfc_lcb_context* %180)
  br label %265

182:                                              ; preds = %73
  store i64 20, i64* %14, align 8
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i64, i64* %14, align 8
  %187 = load i32, i32* @lpfc_max_els_tries, align 4
  %188 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %189 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %190 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i64, i64* @ELS_CMD_LS_RJT, align 8
  %193 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(i32 %185, i32 0, i64 %186, i32 %187, %struct.lpfc_nodelist* %188, i32 %191, i64 %192)
  store %struct.lpfc_iocbq* %193, %struct.lpfc_iocbq** %8, align 8
  %194 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %195 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %194)
  %196 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %197 = icmp ne %struct.lpfc_iocbq* %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %182
  br label %262

199:                                              ; preds = %182
  %200 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %201 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %200, i32 0, i32 2
  store %struct.TYPE_19__* %201, %struct.TYPE_19__** %6, align 8
  %202 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %203 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  %207 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %208 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  store i32 %209, i32* %213, align 4
  %214 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %215 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to %struct.lpfc_dmabuf*
  %218 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to i32*
  store i32* %220, i32** %7, align 8
  %221 = load i64, i64* @ELS_CMD_LS_RJT, align 8
  %222 = load i32*, i32** %7, align 8
  %223 = bitcast i32* %222 to i64*
  store i64 %221, i64* %223, align 8
  %224 = load i32*, i32** %7, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 8
  %226 = bitcast i32* %225 to %struct.ls_rjt*
  store %struct.ls_rjt* %226, %struct.ls_rjt** %10, align 8
  %227 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %228 = load %struct.ls_rjt*, %struct.ls_rjt** %10, align 8
  %229 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 1
  store i32 %227, i32* %231, align 4
  %232 = load i64, i64* %16, align 8
  %233 = load i64, i64* @ADD_STATUS_OPERATION_ALREADY_ACTIVE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %199
  %236 = load i32, i32* @LSEXP_CMD_IN_PROGRESS, align 4
  %237 = load %struct.ls_rjt*, %struct.ls_rjt** %10, align 8
  %238 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 0
  store i32 %236, i32* %240, align 4
  br label %241

241:                                              ; preds = %235, %199
  %242 = load i8*, i8** @lpfc_cmpl_els_rsp, align 8
  %243 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %244 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %243, i32 0, i32 0
  store i8* %242, i8** %244, align 8
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  %250 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %251 = load i32, i32* @LPFC_ELS_RING, align 4
  %252 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %253 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %250, i32 %251, %struct.lpfc_iocbq* %252, i32 0)
  store i32 %253, i32* %17, align 4
  %254 = load i32, i32* %17, align 4
  %255 = load i32, i32* @IOCB_ERROR, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %241
  %258 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %259 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %260 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %258, %struct.lpfc_iocbq* %259)
  br label %261

261:                                              ; preds = %257, %241
  br label %262

262:                                              ; preds = %261, %198, %100
  %263 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %264 = call i32 @kfree(%struct.lpfc_lcb_context* %263)
  br label %265

265:                                              ; preds = %262, %179
  ret void
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @mempool_free(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(i32, i32, i64, i32, %struct.lpfc_nodelist*, i32, i64) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(%struct.fc_lcb_res_frame*, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @kfree(%struct.lpfc_lcb_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
