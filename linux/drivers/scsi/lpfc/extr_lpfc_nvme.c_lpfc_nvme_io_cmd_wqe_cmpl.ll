; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_io_cmd_wqe_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_io_cmd_wqe_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.lpfc_vport*, i64 }
%struct.lpfc_vport = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.lpfc_wcqe_complete = type { i32, i32 }
%struct.lpfc_io_buf = type { i32, i32, i32, i64, i32, %struct.nvmefc_fcp_req*, %struct.TYPE_14__, i32, i32, i64, %struct.lpfc_nodelist* }
%struct.nvmefc_fcp_req = type { i32, i32 (%struct.nvmefc_fcp_req*)*, %struct.lpfc_nvme_fcpreq_priv*, i32, i32, i32, i32, i64, i64 }
%struct.lpfc_nvme_fcpreq_priv = type { i32* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.nvme_fc_ersp_iu = type { i32, %struct.TYPE_18__, i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i8*, i32, i8*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.nvme_fc_cmd_iu = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8* }
%struct.lpfc_nvme_lport = type { i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"6071 Null lpfc_ncmd pointer. No release, skip completion\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"6066 Missing cmpl ptrs: lpfc_ncmd x%px, nvmeCmd x%px\0A\00", align 1
@lpfc_wcqe_c_status = common dso_local global i32 0, align 4
@lpfc_wcqe_c_xb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"NVME FCP CMPL: xri x%x stat x%x parm x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"6062 Ignoring NVME cmpl.  No ndlp\0A\00", align 1
@lpfc_wcqe_c_code = common dso_local global i32 0, align 4
@CQE_CODE_NVME_ERSP = common dso_local global i64 0, align 8
@lpfc_wcqe_c_sqhead = common dso_local global i32 0, align 4
@lpfc_wcqe_c_ersp0 = common dso_local global i32 0, align 4
@LPFC_NVME_ERSP_LEN = common dso_local global i32 0, align 4
@LPFC_IOCB_STATUS_MASK = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [78 x i8] c"6081 NVME Completion Protocol Error: xri %x status x%x result x%x placed x%x\0A\00", align 1
@IOERR_ABORT_REQUESTED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"6032 Delay Aborted cmd x%px nvme cmd x%px, xri x%x, xb %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"6072 NVME Completion Error: xri %x status x%x result x%x [x%x] placed x%x\0A\00", align 1
@NVME_SC_INTERNAL = common dso_local global i32 0, align 4
@LPFC_SBUF_XBUSY = common dso_local global i32 0, align 4
@LPFC_CHECK_CPU_CNT = common dso_local global i64 0, align 8
@LPFC_CHECK_NVME_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*)* @lpfc_nvme_io_cmd_wqe_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nvme_io_cmd_wqe_cmpl(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_wcqe_complete* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_wcqe_complete*, align 8
  %7 = alloca %struct.lpfc_io_buf*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.nvmefc_fcp_req*, align 8
  %10 = alloca %struct.nvme_fc_ersp_iu*, align 8
  %11 = alloca %struct.nvme_fc_cmd_iu*, align 8
  %12 = alloca %struct.lpfc_nodelist*, align 8
  %13 = alloca %struct.lpfc_nvme_fcpreq_priv*, align 8
  %14 = alloca %struct.lpfc_nvme_lport*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_wcqe_complete* %2, %struct.lpfc_wcqe_complete** %6, align 8
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.lpfc_io_buf*
  store %struct.lpfc_io_buf* %25, %struct.lpfc_io_buf** %7, align 8
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %26, i32 0, i32 1
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %27, align 8
  store %struct.lpfc_vport* %28, %struct.lpfc_vport** %8, align 8
  %29 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %30 = icmp ne %struct.lpfc_io_buf* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %3
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load i32, i32* @LOG_NODE, align 4
  %35 = load i32, i32* @LOG_NVME_IOERR, align 4
  %36 = or i32 %34, %35
  %37 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %396

38:                                               ; preds = %3
  %39 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %40 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %39, i32 0, i32 4
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %43 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %42, i32 0, i32 5
  %44 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %43, align 8
  %45 = icmp ne %struct.nvmefc_fcp_req* %44, null
  br i1 %45, label %63, label %46

46:                                               ; preds = %38
  %47 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %48 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %47, i32 0, i32 4
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %51 = load i32, i32* @KERN_ERR, align 4
  %52 = load i32, i32* @LOG_NODE, align 4
  %53 = load i32, i32* @LOG_NVME_IOERR, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %56 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %57 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %56, i32 0, i32 5
  %58 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %57, align 8
  %59 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %50, i32 %51, i32 %54, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), %struct.lpfc_io_buf* %55, %struct.nvmefc_fcp_req* %58)
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %61 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %62 = call i32 @lpfc_release_nvme_buf(%struct.lpfc_hba* %60, %struct.lpfc_io_buf* %61)
  br label %396

63:                                               ; preds = %38
  %64 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %65 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %64, i32 0, i32 5
  %66 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %65, align 8
  store %struct.nvmefc_fcp_req* %66, %struct.nvmefc_fcp_req** %9, align 8
  %67 = load i32, i32* @lpfc_wcqe_c_status, align 4
  %68 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %69 = call i8* @bf_get(i32 %67, %struct.lpfc_wcqe_complete* %68)
  %70 = ptrtoint i8* %69 to i64
  store i64 %70, i64* %16, align 8
  %71 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %17, align 8
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i64, i64* %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load i64, i64* %16, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %63
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %89 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %88, i32 0, i32 0
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br label %92

92:                                               ; preds = %87, %63
  %93 = phi i1 [ false, %63 ], [ %91, %87 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %92
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %99 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.lpfc_nvme_lport*
  store %struct.lpfc_nvme_lport* %103, %struct.lpfc_nvme_lport** %14, align 8
  %104 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %105 = icmp ne %struct.lpfc_nvme_lport* %104, null
  br i1 %105, label %106, label %119

106:                                              ; preds = %97
  %107 = load i32, i32* @lpfc_wcqe_c_xb, align 4
  %108 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %109 = call i8* @bf_get(i32 %107, %struct.lpfc_wcqe_complete* %108)
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %113 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %112, i32 0, i32 1
  %114 = call i32 @atomic_inc(i32* %113)
  br label %115

115:                                              ; preds = %111, %106
  %116 = load %struct.lpfc_nvme_lport*, %struct.lpfc_nvme_lport** %14, align 8
  %117 = getelementptr inbounds %struct.lpfc_nvme_lport, %struct.lpfc_nvme_lport* %116, i32 0, i32 0
  %118 = call i32 @atomic_inc(i32* %117)
  br label %119

119:                                              ; preds = %115, %97
  br label %120

120:                                              ; preds = %119, %92
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %122 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %123 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %128 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @lpfc_nvmeio_data(%struct.lpfc_hba* %121, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %125, i64 %126, i32 %129)
  %131 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %132 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %131, i32 0, i32 10
  %133 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %132, align 8
  store %struct.lpfc_nodelist* %133, %struct.lpfc_nodelist** %12, align 8
  %134 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %135 = icmp ne %struct.lpfc_nodelist* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %120
  %137 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %138 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %136, %120
  %141 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %142 = load i32, i32* @KERN_ERR, align 4
  %143 = load i32, i32* @LOG_NVME_IOERR, align 4
  %144 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %141, i32 %142, i32 %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %318

145:                                              ; preds = %136
  %146 = load i32, i32* @lpfc_wcqe_c_code, align 4
  %147 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %148 = call i8* @bf_get(i32 %146, %struct.lpfc_wcqe_complete* %147)
  %149 = ptrtoint i8* %148 to i64
  store i64 %149, i64* %15, align 8
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* @CQE_CODE_NVME_ERSP, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %232

153:                                              ; preds = %145
  %154 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %155 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %154, i32 0, i32 8
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to %struct.nvme_fc_ersp_iu*
  store %struct.nvme_fc_ersp_iu* %157, %struct.nvme_fc_ersp_iu** %10, align 8
  %158 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %159 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to %struct.nvme_fc_cmd_iu*
  store %struct.nvme_fc_cmd_iu* %161, %struct.nvme_fc_cmd_iu** %11, align 8
  %162 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %11, align 8
  %163 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %18, align 8
  %167 = load i32, i32* @lpfc_wcqe_c_sqhead, align 4
  %168 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %169 = call i8* @bf_get(i32 %167, %struct.lpfc_wcqe_complete* %168)
  store i8* %169, i8** %19, align 8
  %170 = call i32 @cpu_to_be16(i32 8)
  %171 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %10, align 8
  %172 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 4
  %173 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %174 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %10, align 8
  %177 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %179 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @cpu_to_be32(i32 %180)
  %182 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %10, align 8
  %183 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %10, align 8
  %185 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %10, align 8
  %187 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = bitcast i32* %189 to i64*
  store i64* %190, i64** %21, align 8
  %191 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %192 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64*, i64** %21, align 8
  %196 = getelementptr inbounds i64, i64* %195, i32 1
  store i64* %196, i64** %21, align 8
  store i64 %194, i64* %195, align 8
  %197 = load i32, i32* @lpfc_wcqe_c_ersp0, align 4
  %198 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %199 = call i8* @bf_get(i32 %197, %struct.lpfc_wcqe_complete* %198)
  store i8* %199, i8** %20, align 8
  %200 = load i8*, i8** %20, align 8
  %201 = ptrtoint i8* %200 to i64
  %202 = load i64*, i64** %21, align 8
  store i64 %201, i64* %202, align 8
  %203 = load i8*, i8** %19, align 8
  %204 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %10, align 8
  %205 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 3
  store i8* %203, i8** %206, align 8
  %207 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %208 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %10, align 8
  %211 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 2
  store i32 %209, i32* %212, align 8
  %213 = load i8*, i8** %18, align 8
  %214 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %10, align 8
  %215 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 1
  store i8* %213, i8** %216, align 8
  %217 = load %struct.nvme_fc_ersp_iu*, %struct.nvme_fc_ersp_iu** %10, align 8
  %218 = getelementptr inbounds %struct.nvme_fc_ersp_iu, %struct.nvme_fc_ersp_iu* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  store i64 0, i64* %219, align 8
  %220 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %221 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %220, i32 0, i32 0
  store i32 128, i32* %221, align 8
  %222 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %223 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %222, i32 0, i32 1
  store i32 0, i32* %223, align 4
  %224 = load i32, i32* @LPFC_NVME_ERSP_LEN, align 4
  %225 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %226 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %228 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %231 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 4
  br label %347

232:                                              ; preds = %145
  %233 = load i64, i64* %16, align 8
  %234 = load i64, i64* @LPFC_IOCB_STATUS_MASK, align 8
  %235 = and i64 %233, %234
  %236 = trunc i64 %235 to i32
  %237 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %238 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %240 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %243 = and i32 %241, %242
  %244 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %245 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %247 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  switch i32 %248, label %317 [
    i32 128, label %249
    i32 130, label %259
    i32 129, label %296
  ]

249:                                              ; preds = %232
  %250 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %251 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %254 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %253, i32 0, i32 4
  store i32 %252, i32* %254, align 4
  %255 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %256 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %255, i32 0, i32 0
  store i32 0, i32* %256, align 8
  %257 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %258 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %257, i32 0, i32 3
  store i32 0, i32* %258, align 8
  br label %346

259:                                              ; preds = %232
  %260 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %261 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %264 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 4
  %265 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %266 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %269 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  %270 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %271 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %270, i32 0, i32 3
  store i32 0, i32* %271, align 8
  %272 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %273 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @LPFC_NVME_ERSP_LEN, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %259
  br label %346

278:                                              ; preds = %259
  %279 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %280 = load i32, i32* @KERN_ERR, align 4
  %281 = load i32, i32* @LOG_NVME_IOERR, align 4
  %282 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %283 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %282, i32 0, i32 6
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %287 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %290 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %293 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %279, i32 %280, i32 %281, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i32 %285, i32 %288, i32 %291, i32 %294)
  br label %346

296:                                              ; preds = %232
  %297 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %298 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @IOERR_ABORT_REQUESTED, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %316

302:                                              ; preds = %296
  %303 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %304 = load i32, i32* @KERN_INFO, align 4
  %305 = load i32, i32* @LOG_NVME_IOERR, align 4
  %306 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %307 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %308 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %309 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %308, i32 0, i32 6
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @lpfc_wcqe_c_xb, align 4
  %313 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %314 = call i8* @bf_get(i32 %312, %struct.lpfc_wcqe_complete* %313)
  %315 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %303, i32 %304, i32 %305, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), %struct.lpfc_io_buf* %306, %struct.nvmefc_fcp_req* %307, i32 %311, i8* %314)
  br label %316

316:                                              ; preds = %302, %296
  br label %317

317:                                              ; preds = %232, %316
  br label %318

318:                                              ; preds = %317, %140
  %319 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %320 = load i32, i32* @KERN_INFO, align 4
  %321 = load i32, i32* @LOG_NVME_IOERR, align 4
  %322 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %323 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %322, i32 0, i32 6
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %327 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %330 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %333 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %336 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %319, i32 %320, i32 %321, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i32 %325, i32 %328, i32 %331, i32 %334, i32 %337)
  %339 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %340 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %339, i32 0, i32 4
  store i32 0, i32* %340, align 4
  %341 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %342 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %341, i32 0, i32 0
  store i32 0, i32* %342, align 8
  %343 = load i32, i32* @NVME_SC_INTERNAL, align 4
  %344 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %345 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %344, i32 0, i32 3
  store i32 %343, i32* %345, align 8
  br label %346

346:                                              ; preds = %318, %278, %277, %249
  br label %347

347:                                              ; preds = %346, %153
  %348 = load i32, i32* @lpfc_wcqe_c_xb, align 4
  %349 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %350 = call i8* @bf_get(i32 %348, %struct.lpfc_wcqe_complete* %349)
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = load i32, i32* @LPFC_SBUF_XBUSY, align 4
  %354 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %355 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 8
  br label %365

358:                                              ; preds = %347
  %359 = load i32, i32* @LPFC_SBUF_XBUSY, align 4
  %360 = xor i32 %359, -1
  %361 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %362 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = and i32 %363, %360
  store i32 %364, i32* %362, align 8
  br label %365

365:                                              ; preds = %358, %352
  %366 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %367 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @LPFC_SBUF_XBUSY, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %388, label %372

372:                                              ; preds = %365
  %373 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %374 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %373, i32 0, i32 2
  %375 = load %struct.lpfc_nvme_fcpreq_priv*, %struct.lpfc_nvme_fcpreq_priv** %374, align 8
  store %struct.lpfc_nvme_fcpreq_priv* %375, %struct.lpfc_nvme_fcpreq_priv** %13, align 8
  %376 = load %struct.lpfc_nvme_fcpreq_priv*, %struct.lpfc_nvme_fcpreq_priv** %13, align 8
  %377 = getelementptr inbounds %struct.lpfc_nvme_fcpreq_priv, %struct.lpfc_nvme_fcpreq_priv* %376, i32 0, i32 0
  store i32* null, i32** %377, align 8
  %378 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %379 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %378, i32 0, i32 5
  store %struct.nvmefc_fcp_req* null, %struct.nvmefc_fcp_req** %379, align 8
  %380 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %381 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %380, i32 0, i32 4
  %382 = call i32 @spin_unlock(i32* %381)
  %383 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %384 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %383, i32 0, i32 1
  %385 = load i32 (%struct.nvmefc_fcp_req*)*, i32 (%struct.nvmefc_fcp_req*)** %384, align 8
  %386 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %9, align 8
  %387 = call i32 %385(%struct.nvmefc_fcp_req* %386)
  br label %392

388:                                              ; preds = %365
  %389 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %390 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %389, i32 0, i32 4
  %391 = call i32 @spin_unlock(i32* %390)
  br label %392

392:                                              ; preds = %388, %372
  %393 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %394 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %395 = call i32 @lpfc_release_nvme_buf(%struct.lpfc_hba* %393, %struct.lpfc_io_buf* %394)
  br label %396

396:                                              ; preds = %392, %46, %31
  ret void
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @lpfc_release_nvme_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i8* @bf_get(i32, %struct.lpfc_wcqe_complete*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @lpfc_nvmeio_data(%struct.lpfc_hba*, i8*, i32, i64, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
