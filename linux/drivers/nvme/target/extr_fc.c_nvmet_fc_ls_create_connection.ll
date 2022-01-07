; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_ls_create_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_ls_create_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32 }
%struct.nvmet_fc_ls_iod = type { i32, i32, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.fcnvme_ls_cr_conn_rqst = type { i64, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.fcnvme_ls_cr_conn_acc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.nvmet_fc_tgt_queue = type { i64, i32, i64 }

@VERR_CR_CONN_LEN = common dso_local global i32 0, align 4
@VERR_CR_CONN_RQST_LEN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_ASSOC_ID = common dso_local global i32 0, align 4
@VERR_ASSOC_ID = common dso_local global i32 0, align 4
@VERR_ASSOC_ID_LEN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_CREATE_CONN_CMD = common dso_local global i32 0, align 4
@VERR_CR_CONN_CMD = common dso_local global i32 0, align 4
@VERR_CR_CONN_CMD_LEN = common dso_local global i32 0, align 4
@VERR_ERSP_RATIO = common dso_local global i32 0, align 4
@VERR_NO_ASSOC = common dso_local global i32 0, align 4
@VERR_QUEUE_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Create Connection LS failed: %s\0A\00", align 1
@validation_errors = common dso_local global i32* null, align 8
@NVME_FC_MAX_LS_BUFFER_SIZE = common dso_local global i32 0, align 4
@FCNVME_RJT_RC_INV_ASSOC = common dso_local global i32 0, align 4
@FCNVME_RJT_RC_LOGIC = common dso_local global i32 0, align 4
@FCNVME_RJT_EXP_NONE = common dso_local global i32 0, align 4
@FCNVME_LS_ACC = common dso_local global i32 0, align 4
@FCNVME_LS_CREATE_CONNECTION = common dso_local global i32 0, align 4
@FCNVME_LSDESC_CONN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_ls_iod*)* @nvmet_fc_ls_create_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_ls_create_connection(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_ls_iod* %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_ls_iod*, align 8
  %5 = alloca %struct.fcnvme_ls_cr_conn_rqst*, align 8
  %6 = alloca %struct.fcnvme_ls_cr_conn_acc*, align 8
  %7 = alloca %struct.nvmet_fc_tgt_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  store %struct.nvmet_fc_ls_iod* %1, %struct.nvmet_fc_ls_iod** %4, align 8
  %9 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %10 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.fcnvme_ls_cr_conn_rqst*
  store %struct.fcnvme_ls_cr_conn_rqst* %12, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %13 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %14 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.fcnvme_ls_cr_conn_acc*
  store %struct.fcnvme_ls_cr_conn_acc* %16, %struct.fcnvme_ls_cr_conn_acc** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %6, align 8
  %18 = call i32 @memset(%struct.fcnvme_ls_cr_conn_acc* %17, i32 0, i32 24)
  %19 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %20 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 72
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @VERR_CR_CONN_LEN, align 4
  store i32 %25, i32* %8, align 4
  br label %139

26:                                               ; preds = %2
  %27 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %28 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @fcnvme_lsdesc_len(i32 72)
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @VERR_CR_CONN_RQST_LEN, align 4
  store i32 %33, i32* %8, align 4
  br label %138

34:                                               ; preds = %26
  %35 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %36 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @FCNVME_LSDESC_ASSOC_ID, align 4
  %40 = call i64 @cpu_to_be32(i32 %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @VERR_ASSOC_ID, align 4
  store i32 %43, i32* %8, align 4
  br label %137

44:                                               ; preds = %34
  %45 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %46 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @fcnvme_lsdesc_len(i32 4)
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @VERR_ASSOC_ID_LEN, align 4
  store i32 %52, i32* %8, align 4
  br label %136

53:                                               ; preds = %44
  %54 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %55 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @FCNVME_LSDESC_CREATE_CONN_CMD, align 4
  %59 = call i64 @cpu_to_be32(i32 %58)
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @VERR_CR_CONN_CMD, align 4
  store i32 %62, i32* %8, align 4
  br label %135

63:                                               ; preds = %53
  %64 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %65 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @fcnvme_lsdesc_len(i32 4)
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @VERR_CR_CONN_CMD_LEN, align 4
  store i32 %71, i32* %8, align 4
  br label %134

72:                                               ; preds = %63
  %73 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %74 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %80 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @be16_to_cpu(i32 %82)
  %84 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %85 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @be16_to_cpu(i32 %87)
  %89 = icmp sge i64 %83, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %78, %72
  %91 = load i32, i32* @VERR_ERSP_RATIO, align 4
  store i32 %91, i32* %8, align 4
  br label %133

92:                                               ; preds = %78
  %93 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %94 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %95 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @be64_to_cpu(i32 %97)
  %99 = call i32 @nvmet_fc_find_target_assoc(%struct.nvmet_fc_tgtport* %93, i32 %98)
  %100 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %101 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %103 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %92
  %107 = load i32, i32* @VERR_NO_ASSOC, align 4
  store i32 %107, i32* %8, align 4
  br label %132

108:                                              ; preds = %92
  %109 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %110 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %113 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @be16_to_cpu(i32 %115)
  %117 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %118 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @be16_to_cpu(i32 %120)
  %122 = call %struct.nvmet_fc_tgt_queue* @nvmet_fc_alloc_target_queue(i32 %111, i64 %116, i64 %121)
  store %struct.nvmet_fc_tgt_queue* %122, %struct.nvmet_fc_tgt_queue** %7, align 8
  %123 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %7, align 8
  %124 = icmp ne %struct.nvmet_fc_tgt_queue* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %108
  %126 = load i32, i32* @VERR_QUEUE_ALLOC_FAIL, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %125, %108
  %128 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %129 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @nvmet_fc_tgt_a_put(i32 %130)
  br label %132

132:                                              ; preds = %127, %106
  br label %133

133:                                              ; preds = %132, %90
  br label %134

134:                                              ; preds = %133, %70
  br label %135

135:                                              ; preds = %134, %61
  br label %136

136:                                              ; preds = %135, %51
  br label %137

137:                                              ; preds = %136, %42
  br label %138

138:                                              ; preds = %137, %32
  br label %139

139:                                              ; preds = %138, %24
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %173

142:                                              ; preds = %139
  %143 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %144 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @validation_errors, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dev_err(i32 %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %150)
  %152 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %6, align 8
  %153 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %154 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %155 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @VERR_NO_ASSOC, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %142
  %162 = load i32, i32* @FCNVME_RJT_RC_INV_ASSOC, align 4
  br label %165

163:                                              ; preds = %142
  %164 = load i32, i32* @FCNVME_RJT_RC_LOGIC, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = load i32, i32* @FCNVME_RJT_EXP_NONE, align 4
  %168 = call i32 @nvmet_fc_format_rjt(%struct.fcnvme_ls_cr_conn_acc* %152, i32 %153, i32 %157, i32 %166, i32 %167, i32 0)
  %169 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %170 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %169, i32 0, i32 2
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i32 %168, i32* %172, align 4
  br label %217

173:                                              ; preds = %139
  %174 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %175 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @be16_to_cpu(i32 %177)
  %179 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %7, align 8
  %180 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  %181 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %7, align 8
  %182 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %181, i32 0, i32 1
  %183 = call i32 @atomic_set(i32* %182, i32 1)
  %184 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %7, align 8
  %185 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %184, i32 0, i32 0
  store i64 0, i64* %185, align 8
  %186 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %187 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %186, i32 0, i32 2
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  store i32 24, i32* %189, align 4
  %190 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %6, align 8
  %191 = load i32, i32* @FCNVME_LS_ACC, align 4
  %192 = call i64 @fcnvme_lsdesc_len(i32 24)
  %193 = load i32, i32* @FCNVME_LS_CREATE_CONNECTION, align 4
  %194 = call i32 @nvmet_fc_format_rsp_hdr(%struct.fcnvme_ls_cr_conn_acc* %190, i32 %191, i64 %192, i32 %193)
  %195 = load i32, i32* @FCNVME_LSDESC_CONN_ID, align 4
  %196 = call i64 @cpu_to_be32(i32 %195)
  %197 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %6, align 8
  %198 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  store i64 %196, i64* %199, align 8
  %200 = call i64 @fcnvme_lsdesc_len(i32 4)
  %201 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %6, align 8
  %202 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  store i64 %200, i64* %203, align 8
  %204 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %205 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.fcnvme_ls_cr_conn_rqst*, %struct.fcnvme_ls_cr_conn_rqst** %5, align 8
  %208 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_rqst, %struct.fcnvme_ls_cr_conn_rqst* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @be16_to_cpu(i32 %210)
  %212 = call i32 @nvmet_fc_makeconnid(i32 %206, i64 %211)
  %213 = call i32 @cpu_to_be64(i32 %212)
  %214 = load %struct.fcnvme_ls_cr_conn_acc*, %struct.fcnvme_ls_cr_conn_acc** %6, align 8
  %215 = getelementptr inbounds %struct.fcnvme_ls_cr_conn_acc, %struct.fcnvme_ls_cr_conn_acc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 8
  br label %217

217:                                              ; preds = %173, %165
  ret void
}

declare dso_local i32 @memset(%struct.fcnvme_ls_cr_conn_acc*, i32, i32) #1

declare dso_local i64 @fcnvme_lsdesc_len(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @nvmet_fc_find_target_assoc(%struct.nvmet_fc_tgtport*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local %struct.nvmet_fc_tgt_queue* @nvmet_fc_alloc_target_queue(i32, i64, i64) #1

declare dso_local i32 @nvmet_fc_tgt_a_put(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @nvmet_fc_format_rjt(%struct.fcnvme_ls_cr_conn_acc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nvmet_fc_format_rsp_hdr(%struct.fcnvme_ls_cr_conn_acc*, i32, i64, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @nvmet_fc_makeconnid(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
