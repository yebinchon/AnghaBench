; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_connect_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_connect_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.nvme_fc_queue = type { i64, i32, i32 }
%struct.nvmefc_ls_req_op = type { %struct.nvme_fc_queue*, %struct.nvmefc_ls_req }
%struct.nvmefc_ls_req = type { i32, i32, i32, %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_rqst*, i8* }
%struct.fcnvme_ls_cr_conn_acc = type { %struct.TYPE_11__, %struct.TYPE_20__ }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.fcnvme_ls_cr_conn_rqst = type { %struct.TYPE_16__, %struct.TYPE_15__, i64, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i64, i64 }
%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FCNVME_LS_CREATE_CONNECTION = common dso_local global i64 0, align 8
@FCNVME_LSDESC_ASSOC_ID = common dso_local global i32 0, align 4
@FCNVME_LSDESC_CREATE_CONN_CMD = common dso_local global i32 0, align 4
@NVME_FC_CONNECT_TIMEOUT_SEC = common dso_local global i32 0, align 4
@FCNVME_LS_ACC = common dso_local global i64 0, align 8
@VERR_LSACC = common dso_local global i32 0, align 4
@VERR_CR_CONN_ACC_LEN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_RQST = common dso_local global i32 0, align 4
@VERR_LSDESC_RQST = common dso_local global i32 0, align 4
@VERR_LSDESC_RQST_LEN = common dso_local global i32 0, align 4
@VERR_CR_CONN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_CONN_ID = common dso_local global i32 0, align 4
@VERR_CONN_ID = common dso_local global i32 0, align 4
@VERR_CONN_ID_LEN = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"q %d connect failed: %s\0A\00", align 1
@validation_errors = common dso_local global i32* null, align 8
@NVME_FC_Q_CONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"queue %d connect command failed (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*, %struct.nvme_fc_queue*, i64, i64)* @nvme_fc_connect_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_connect_queue(%struct.nvme_fc_ctrl* %0, %struct.nvme_fc_queue* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.nvme_fc_ctrl*, align 8
  %6 = alloca %struct.nvme_fc_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvmefc_ls_req_op*, align 8
  %10 = alloca %struct.nvmefc_ls_req*, align 8
  %11 = alloca %struct.fcnvme_ls_cr_conn_rqst*, align 8
  %12 = alloca %struct.fcnvme_ls_cr_conn_acc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %5, align 8
  store %struct.nvme_fc_queue* %1, %struct.nvme_fc_queue** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %16 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 48, %22
  %24 = add i64 %23, 80
  %25 = add i64 %24, 64
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
  br label %242

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
  %46 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %45, i32 0, i32 3
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %44, i64 %52
  %54 = bitcast i8* %53 to %struct.fcnvme_ls_cr_conn_rqst*
  store %struct.fcnvme_ls_cr_conn_rqst* %54, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %55 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %56 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %55, i64 1
  %57 = bitcast %struct.fcnvme_ls_cr_conn_rqst* %56 to %struct.fcnvme_ls_cr_conn_acc*
  store %struct.fcnvme_ls_cr_conn_acc* %57, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %58 = load i64, i64* @FCNVME_LS_CREATE_CONNECTION, align 8
  %59 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %60 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = call i64 @cpu_to_be32(i32 8)
  %63 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %64 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load i32, i32* @FCNVME_LSDESC_ASSOC_ID, align 4
  %66 = call i64 @cpu_to_be32(i32 %65)
  %67 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %68 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  store i64 %66, i64* %69, align 8
  %70 = call i64 @fcnvme_lsdesc_len(i32 4)
  %71 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %72 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  store i64 %70, i64* %73, align 8
  %74 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %75 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @cpu_to_be64(i32 %76)
  %78 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %79 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @FCNVME_LSDESC_CREATE_CONN_CMD, align 4
  %82 = call i64 @cpu_to_be32(i32 %81)
  %83 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %84 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 4
  store i64 %82, i64* %85, align 8
  %86 = call i64 @fcnvme_lsdesc_len(i32 4)
  %87 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %88 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i8* @cpu_to_be16(i64 %90)
  %92 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %93 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  store i8* %91, i8** %94, align 8
  %95 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %96 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @cpu_to_be16(i64 %97)
  %99 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %100 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  store i8* %98, i8** %101, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub nsw i64 %102, 1
  %104 = call i8* @cpu_to_be16(i64 %103)
  %105 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %106 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  %108 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %109 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %9, align 8
  %110 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %109, i32 0, i32 0
  store %struct.nvme_fc_queue* %108, %struct.nvme_fc_queue** %110, align 8
  %111 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %11, align 8
  %112 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %113 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %112, i32 0, i32 4
  store %struct.fcnvme_ls_cr_conn_rqst* %111, %struct.fcnvme_ls_cr_conn_rqst** %113, align 8
  %114 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %115 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %114, i32 0, i32 0
  store i32 80, i32* %115, align 8
  %116 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %117 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %118 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %117, i32 0, i32 3
  store %struct.fcnvme_ls_cr_conn_acc* %116, %struct.fcnvme_ls_cr_conn_acc** %118, align 8
  %119 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %120 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %119, i32 0, i32 1
  store i32 64, i32* %120, align 4
  %121 = load i32, i32* @NVME_FC_CONNECT_TIMEOUT_SEC, align 4
  %122 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %10, align 8
  %123 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %125 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %9, align 8
  %128 = call i32 @nvme_fc_send_ls_req(i32 %126, %struct.nvmefc_ls_req_op* %127)
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %34
  br label %239

132:                                              ; preds = %34
  %133 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %134 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @FCNVME_LS_ACC, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* @VERR_LSACC, align 4
  store i32 %141, i32* %14, align 4
  br label %208

142:                                              ; preds = %132
  %143 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %144 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @fcnvme_lsdesc_len(i32 64)
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @VERR_CR_CONN_ACC_LEN, align 4
  store i32 %150, i32* %14, align 4
  br label %207

151:                                              ; preds = %142
  %152 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %153 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @FCNVME_LSDESC_RQST, align 4
  %158 = call i64 @cpu_to_be32(i32 %157)
  %159 = icmp ne i64 %156, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load i32, i32* @VERR_LSDESC_RQST, align 4
  store i32 %161, i32* %14, align 4
  br label %206

162:                                              ; preds = %151
  %163 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %164 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @fcnvme_lsdesc_len(i32 4)
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = load i32, i32* @VERR_LSDESC_RQST_LEN, align 4
  store i32 %171, i32* %14, align 4
  br label %205

172:                                              ; preds = %162
  %173 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %174 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @FCNVME_LS_CREATE_CONNECTION, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %172
  %182 = load i32, i32* @VERR_CR_CONN, align 4
  store i32 %182, i32* %14, align 4
  br label %204

183:                                              ; preds = %172
  %184 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %185 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @FCNVME_LSDESC_CONN_ID, align 4
  %189 = call i64 @cpu_to_be32(i32 %188)
  %190 = icmp ne i64 %187, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = load i32, i32* @VERR_CONN_ID, align 4
  store i32 %192, i32* %14, align 4
  br label %203

193:                                              ; preds = %183
  %194 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %195 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i64 @fcnvme_lsdesc_len(i32 4)
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i32, i32* @VERR_CONN_ID_LEN, align 4
  store i32 %201, i32* %14, align 4
  br label %202

202:                                              ; preds = %200, %193
  br label %203

203:                                              ; preds = %202, %191
  br label %204

204:                                              ; preds = %203, %181
  br label %205

205:                                              ; preds = %204, %170
  br label %206

206:                                              ; preds = %205, %160
  br label %207

207:                                              ; preds = %206, %149
  br label %208

208:                                              ; preds = %207, %140
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %208
  %212 = load i32, i32* @EBADF, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %13, align 4
  %214 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %215 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %218 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i32*, i32** @validation_errors, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @dev_err(i32 %216, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %219, i32 %224)
  br label %238

226:                                              ; preds = %208
  %227 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %12, align 8
  %228 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @be64_to_cpu(i32 %230)
  %232 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %233 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* @NVME_FC_Q_CONNECTED, align 4
  %235 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %236 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %235, i32 0, i32 1
  %237 = call i32 @set_bit(i32 %234, i32* %236)
  br label %238

238:                                              ; preds = %226, %211
  br label %239

239:                                              ; preds = %238, %131
  %240 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %9, align 8
  %241 = call i32 @kfree(%struct.nvmefc_ls_req_op* %240)
  br label %242

242:                                              ; preds = %239, %31
  %243 = load i32, i32* %13, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %242
  %246 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %247 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %6, align 8
  %250 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = call i32 @dev_err(i32 %248, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %251, i32 %252)
  br label %254

254:                                              ; preds = %245, %242
  %255 = load i32, i32* %13, align 4
  ret i32 %255
}

declare dso_local %struct.nvmefc_ls_req_op* @kzalloc(i32, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64 @fcnvme_lsdesc_len(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @nvme_fc_send_ls_req(i32, %struct.nvmefc_ls_req_op*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kfree(%struct.nvmefc_ls_req_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
