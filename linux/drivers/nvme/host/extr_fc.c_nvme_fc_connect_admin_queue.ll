; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_connect_admin_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_connect_admin_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32, i8*, i32, %struct.TYPE_24__, %struct.TYPE_19__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.nvme_fc_queue = type { i32, i32, i8* }
%struct.nvmefc_ls_req_op = type { %struct.nvme_fc_queue*, %struct.nvmefc_ls_req }
%struct.nvmefc_ls_req = type { i32, i32, i32, %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_rqst*, i8* }
%struct.fcnvme_ls_cr_assoc_acc = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_25__ }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.fcnvme_ls_cr_assoc_rqst = type { %struct.TYPE_22__, i64, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i32, i32, i32, i8*, i8*, i8*, i64, i64 }
%struct.TYPE_20__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FCNVME_LS_CREATE_ASSOCIATION = common dso_local global i64 0, align 8
@FCNVME_LSDESC_CREATE_ASSOC_CMD = common dso_local global i32 0, align 4
@FCNVME_ASSOC_HOSTNQN_LEN = common dso_local global i32 0, align 4
@NVMF_NQN_SIZE = common dso_local global i32 0, align 4
@FCNVME_ASSOC_SUBNQN_LEN = common dso_local global i32 0, align 4
@NVME_FC_CONNECT_TIMEOUT_SEC = common dso_local global i32 0, align 4
@FCNVME_LS_ACC = common dso_local global i64 0, align 8
@VERR_LSACC = common dso_local global i32 0, align 4
@VERR_CR_ASSOC_ACC_LEN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_RQST = common dso_local global i32 0, align 4
@VERR_LSDESC_RQST = common dso_local global i32 0, align 4
@VERR_LSDESC_RQST_LEN = common dso_local global i32 0, align 4
@VERR_CR_ASSOC = common dso_local global i32 0, align 4
@FCNVME_LSDESC_ASSOC_ID = common dso_local global i32 0, align 4
@VERR_ASSOC_ID = common dso_local global i32 0, align 4
@VERR_ASSOC_ID_LEN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_CONN_ID = common dso_local global i32 0, align 4
@VERR_CONN_ID = common dso_local global i32 0, align 4
@VERR_CONN_ID_LEN = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"q %d connect failed: %s\0A\00", align 1
@validation_errors = common dso_local global i32* null, align 8
@NVME_FC_Q_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"queue %d connect admin queue failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*, %struct.nvme_fc_queue*, i32, i32)* @nvme_fc_connect_admin_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_connect_admin_queue(%struct.nvme_fc_ctrl* %0, %struct.nvme_fc_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_fc_ctrl*, align 8
  %6 = alloca %struct.nvme_fc_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvmefc_ls_req_op*, align 8
  %10 = alloca %struct.nvmefc_ls_req*, align 8
  %11 = alloca %struct.fcnvme_ls_cr_assoc_rqst*, align 8
  %12 = alloca %struct.fcnvme_ls_cr_assoc_acc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %5, align 8
  store %struct.nvme_fc_queue* %1, %struct.nvme_fc_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %15, i32 0, i32 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 48, %22
  %24 = add i64 %23, 72
  %25 = add i64 %24, 88
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.nvmefc_ls_req_op* @kzalloc(i32 %26, i32 %27)
  store %struct.nvmefc_ls_req_op* %28, %struct.nvmefc_ls_req_op** %9, align 8
  %29 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %9, align 8
  %30 = icmp ne %struct.nvmefc_ls_req_op* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  br label %292

34:                                               ; preds = %4
  %35 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %9, align 8
  %36 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %35, i32 0, i32 1
  store %struct.nvmefc_ls_req* %36, %struct.nvmefc_ls_req** %10, align 8
  %37 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %9, align 8
  %38 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %37, i64 1
  %39 = bitcast %struct.nvmefc_ls_req_op* %38 to i8*
  %40 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %41 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %43 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %46 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %45, i32 0, i32 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %44, i64 %52
  %54 = bitcast i8* %53 to %struct.fcnvme_ls_cr_assoc_rqst*
  store %struct.fcnvme_ls_cr_assoc_rqst* %54, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %55 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %56 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %55, i64 1
  %57 = bitcast %struct.fcnvme_ls_cr_assoc_rqst* %56 to %struct.fcnvme_ls_cr_assoc_acc*
  store %struct.fcnvme_ls_cr_assoc_acc* %57, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %58 = load i64, i64* @FCNVME_LS_CREATE_ASSOCIATION, align 8
  %59 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %60 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = call i64 @cpu_to_be32(i32 4)
  %63 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %64 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @FCNVME_LSDESC_CREATE_ASSOC_CMD, align 4
  %66 = call i64 @cpu_to_be32(i32 %65)
  %67 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %68 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 7
  store i64 %66, i64* %69, align 8
  %70 = call i64 @fcnvme_lsdesc_len(i32 4)
  %71 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %72 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 6
  store i64 %70, i64* %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i8* @cpu_to_be16(i32 %74)
  %76 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %77 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 5
  store i8* %75, i8** %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i8* @cpu_to_be16(i32 %80)
  %82 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %83 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 4
  store i8* %81, i8** %84, align 8
  %85 = call i8* @cpu_to_be16(i32 65535)
  %86 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %87 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 3
  store i8* %85, i8** %88, align 8
  %89 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %90 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  %92 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %93 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = call i32 @uuid_copy(i32* %91, i32* %98)
  %100 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %101 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %105 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FCNVME_ASSOC_HOSTNQN_LEN, align 4
  %113 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %114 = call i32 @min(i32 %112, i32 %113)
  %115 = call i32 @strncpy(i32 %103, i32 %111, i32 %114)
  %116 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %117 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %121 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @FCNVME_ASSOC_SUBNQN_LEN, align 4
  %127 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %128 = call i32 @min(i32 %126, i32 %127)
  %129 = call i32 @strncpy(i32 %119, i32 %125, i32 %128)
  %130 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %131 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %9, align 8
  %132 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %131, i32 0, i32 0
  store %struct.nvme_fc_queue* %130, %struct.nvme_fc_queue** %132, align 8
  %133 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %11, align 8
  %134 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %135 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %134, i32 0, i32 4
  store %struct.fcnvme_ls_cr_assoc_rqst* %133, %struct.fcnvme_ls_cr_assoc_rqst** %135, align 8
  %136 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %137 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %136, i32 0, i32 0
  store i32 72, i32* %137, align 8
  %138 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %139 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %140 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %139, i32 0, i32 3
  store %struct.fcnvme_ls_cr_assoc_acc* %138, %struct.fcnvme_ls_cr_assoc_acc** %140, align 8
  %141 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %142 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %141, i32 0, i32 1
  store i32 88, i32* %142, align 4
  %143 = load i32, i32* @NVME_FC_CONNECT_TIMEOUT_SEC, align 4
  %144 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %145 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %147 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %9, align 8
  %150 = call i32 @nvme_fc_send_ls_req(i32 %148, %struct.nvmefc_ls_req_op* %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %34
  br label %289

154:                                              ; preds = %34
  %155 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %156 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @FCNVME_LS_ACC, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32, i32* @VERR_LSACC, align 4
  store i32 %163, i32* %14, align 4
  br label %251

164:                                              ; preds = %154
  %165 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %166 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @fcnvme_lsdesc_len(i32 88)
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @VERR_CR_ASSOC_ACC_LEN, align 4
  store i32 %172, i32* %14, align 4
  br label %250

173:                                              ; preds = %164
  %174 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %175 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* @FCNVME_LSDESC_RQST, align 4
  %180 = call i64 @cpu_to_be32(i32 %179)
  %181 = icmp ne i64 %178, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = load i32, i32* @VERR_LSDESC_RQST, align 4
  store i32 %183, i32* %14, align 4
  br label %249

184:                                              ; preds = %173
  %185 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %186 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i64 @fcnvme_lsdesc_len(i32 4)
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i32, i32* @VERR_LSDESC_RQST_LEN, align 4
  store i32 %193, i32* %14, align 4
  br label %248

194:                                              ; preds = %184
  %195 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %196 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @FCNVME_LS_CREATE_ASSOCIATION, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %194
  %204 = load i32, i32* @VERR_CR_ASSOC, align 4
  store i32 %204, i32* %14, align 4
  br label %247

205:                                              ; preds = %194
  %206 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %207 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* @FCNVME_LSDESC_ASSOC_ID, align 4
  %211 = call i64 @cpu_to_be32(i32 %210)
  %212 = icmp ne i64 %209, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %205
  %214 = load i32, i32* @VERR_ASSOC_ID, align 4
  store i32 %214, i32* %14, align 4
  br label %246

215:                                              ; preds = %205
  %216 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %217 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @fcnvme_lsdesc_len(i32 4)
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = load i32, i32* @VERR_ASSOC_ID_LEN, align 4
  store i32 %223, i32* %14, align 4
  br label %245

224:                                              ; preds = %215
  %225 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %226 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i32, i32* @FCNVME_LSDESC_CONN_ID, align 4
  %230 = call i64 @cpu_to_be32(i32 %229)
  %231 = icmp ne i64 %228, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %224
  %233 = load i32, i32* @VERR_CONN_ID, align 4
  store i32 %233, i32* %14, align 4
  br label %244

234:                                              ; preds = %224
  %235 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %236 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @fcnvme_lsdesc_len(i32 4)
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  %242 = load i32, i32* @VERR_CONN_ID_LEN, align 4
  store i32 %242, i32* %14, align 4
  br label %243

243:                                              ; preds = %241, %234
  br label %244

244:                                              ; preds = %243, %232
  br label %245

245:                                              ; preds = %244, %222
  br label %246

246:                                              ; preds = %245, %213
  br label %247

247:                                              ; preds = %246, %203
  br label %248

248:                                              ; preds = %247, %192
  br label %249

249:                                              ; preds = %248, %182
  br label %250

250:                                              ; preds = %249, %171
  br label %251

251:                                              ; preds = %250, %162
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %269

254:                                              ; preds = %251
  %255 = load i32, i32* @EBADF, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %13, align 4
  %257 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %258 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %261 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32*, i32** @validation_errors, align 8
  %264 = load i32, i32* %14, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @dev_err(i32 %259, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %262, i32 %267)
  br label %288

269:                                              ; preds = %251
  %270 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %271 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = call i8* @be64_to_cpu(i32 %273)
  %275 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %276 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  %277 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %12, align 8
  %278 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i8* @be64_to_cpu(i32 %280)
  %282 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %283 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %282, i32 0, i32 2
  store i8* %281, i8** %283, align 8
  %284 = load i32, i32* @NVME_FC_Q_CONNECTED, align 4
  %285 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %286 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %285, i32 0, i32 1
  %287 = call i32 @set_bit(i32 %284, i32* %286)
  br label %288

288:                                              ; preds = %269, %254
  br label %289

289:                                              ; preds = %288, %153
  %290 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %9, align 8
  %291 = call i32 @kfree(%struct.nvmefc_ls_req_op* %290)
  br label %292

292:                                              ; preds = %289, %31
  %293 = load i32, i32* %13, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %297 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %300 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* %13, align 4
  %303 = call i32 @dev_err(i32 %298, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %301, i32 %302)
  br label %304

304:                                              ; preds = %295, %292
  %305 = load i32, i32* %13, align 4
  ret i32 %305
}

declare dso_local %struct.nvmefc_ls_req_op* @kzalloc(i32, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64 @fcnvme_lsdesc_len(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_fc_send_ls_req(i32, %struct.nvmefc_ls_req_op*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.nvmefc_ls_req_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
