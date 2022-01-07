; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_ls_create_association.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_ls_create_association.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32 }
%struct.nvmet_fc_ls_iod = type { i64, i32, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.fcnvme_ls_cr_assoc_rqst = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fcnvme_ls_cr_assoc_acc = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i8*, i64 }
%struct.TYPE_9__ = type { i32, i8*, i64 }
%struct.nvmet_fc_tgt_queue = type { i64, i32, i64 }

@FCNVME_LSDESC_CRA_RQST_MINLEN = common dso_local global i64 0, align 8
@VERR_CR_ASSOC_LEN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_CRA_RQST_MIN_LISTLEN = common dso_local global i64 0, align 8
@VERR_CR_ASSOC_RQST_LEN = common dso_local global i32 0, align 4
@FCNVME_LSDESC_CREATE_ASSOC_CMD = common dso_local global i32 0, align 4
@VERR_CR_ASSOC_CMD = common dso_local global i32 0, align 4
@FCNVME_LSDESC_CRA_CMD_DESC_MIN_DESCLEN = common dso_local global i64 0, align 8
@VERR_CR_ASSOC_CMD_LEN = common dso_local global i32 0, align 4
@VERR_ERSP_RATIO = common dso_local global i32 0, align 4
@VERR_ASSOC_ALLOC_FAIL = common dso_local global i32 0, align 4
@VERR_QUEUE_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Create Association LS failed: %s\0A\00", align 1
@validation_errors = common dso_local global i32* null, align 8
@NVME_FC_MAX_LS_BUFFER_SIZE = common dso_local global i32 0, align 4
@FCNVME_RJT_RC_LOGIC = common dso_local global i32 0, align 4
@FCNVME_RJT_EXP_NONE = common dso_local global i32 0, align 4
@FCNVME_LS_ACC = common dso_local global i32 0, align 4
@FCNVME_LS_CREATE_ASSOCIATION = common dso_local global i32 0, align 4
@FCNVME_LSDESC_ASSOC_ID = common dso_local global i32 0, align 4
@FCNVME_LSDESC_CONN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_ls_iod*)* @nvmet_fc_ls_create_association to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_ls_create_association(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_ls_iod* %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_ls_iod*, align 8
  %5 = alloca %struct.fcnvme_ls_cr_assoc_rqst*, align 8
  %6 = alloca %struct.fcnvme_ls_cr_assoc_acc*, align 8
  %7 = alloca %struct.nvmet_fc_tgt_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  store %struct.nvmet_fc_ls_iod* %1, %struct.nvmet_fc_ls_iod** %4, align 8
  %9 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %10 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.fcnvme_ls_cr_assoc_rqst*
  store %struct.fcnvme_ls_cr_assoc_rqst* %12, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %13 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %14 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.fcnvme_ls_cr_assoc_acc*
  store %struct.fcnvme_ls_cr_assoc_acc* %16, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %18 = call i32 @memset(%struct.fcnvme_ls_cr_assoc_acc* %17, i32 0, i32 48)
  %19 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %20 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FCNVME_LSDESC_CRA_RQST_MINLEN, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @VERR_CR_ASSOC_LEN, align 4
  store i32 %25, i32* %8, align 4
  br label %106

26:                                               ; preds = %2
  %27 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %28 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @be32_to_cpu(i32 %29)
  %31 = load i64, i64* @FCNVME_LSDESC_CRA_RQST_MIN_LISTLEN, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @VERR_CR_ASSOC_RQST_LEN, align 4
  store i32 %34, i32* %8, align 4
  br label %105

35:                                               ; preds = %26
  %36 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %37 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @FCNVME_LSDESC_CREATE_ASSOC_CMD, align 4
  %41 = call i64 @cpu_to_be32(i32 %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @VERR_CR_ASSOC_CMD, align 4
  store i32 %44, i32* %8, align 4
  br label %104

45:                                               ; preds = %35
  %46 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %47 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @be32_to_cpu(i32 %49)
  %51 = load i64, i64* @FCNVME_LSDESC_CRA_CMD_DESC_MIN_DESCLEN, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @VERR_CR_ASSOC_CMD_LEN, align 4
  store i32 %54, i32* %8, align 4
  br label %103

55:                                               ; preds = %45
  %56 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %57 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %63 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @be16_to_cpu(i32 %65)
  %67 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %68 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @be16_to_cpu(i32 %70)
  %72 = icmp sge i64 %66, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61, %55
  %74 = load i32, i32* @VERR_ERSP_RATIO, align 4
  store i32 %74, i32* %8, align 4
  br label %102

75:                                               ; preds = %61
  %76 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %77 = call i32 @nvmet_fc_alloc_target_assoc(%struct.nvmet_fc_tgtport* %76)
  %78 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %79 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %81 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @VERR_ASSOC_ALLOC_FAIL, align 4
  store i32 %85, i32* %8, align 4
  br label %101

86:                                               ; preds = %75
  %87 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %88 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %91 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @be16_to_cpu(i32 %93)
  %95 = call %struct.nvmet_fc_tgt_queue* @nvmet_fc_alloc_target_queue(i32 %89, i32 0, i64 %94)
  store %struct.nvmet_fc_tgt_queue* %95, %struct.nvmet_fc_tgt_queue** %7, align 8
  %96 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %7, align 8
  %97 = icmp ne %struct.nvmet_fc_tgt_queue* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* @VERR_QUEUE_ALLOC_FAIL, align 4
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %98, %86
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %101, %73
  br label %103

103:                                              ; preds = %102, %53
  br label %104

104:                                              ; preds = %103, %43
  br label %105

105:                                              ; preds = %104, %33
  br label %106

106:                                              ; preds = %105, %24
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %106
  %110 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %111 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** @validation_errors, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %120 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %121 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %122 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @FCNVME_RJT_RC_LOGIC, align 4
  %126 = load i32, i32* @FCNVME_RJT_EXP_NONE, align 4
  %127 = call i32 @nvmet_fc_format_rjt(%struct.fcnvme_ls_cr_assoc_acc* %119, i32 %120, i32 %124, i32 %125, i32 %126, i32 0)
  %128 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %129 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %128, i32 0, i32 2
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 4
  br label %187

132:                                              ; preds = %106
  %133 = load %struct.fcnvme_ls_cr_assoc_rqst*, %struct.fcnvme_ls_cr_assoc_rqst** %5, align 8
  %134 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_rqst, %struct.fcnvme_ls_cr_assoc_rqst* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @be16_to_cpu(i32 %136)
  %138 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %7, align 8
  %139 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %7, align 8
  %141 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %140, i32 0, i32 1
  %142 = call i32 @atomic_set(i32* %141, i32 1)
  %143 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %7, align 8
  %144 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %146 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %145, i32 0, i32 2
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i32 48, i32* %148, align 4
  %149 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %150 = load i32, i32* @FCNVME_LS_ACC, align 4
  %151 = call i8* @fcnvme_lsdesc_len(i32 48)
  %152 = load i32, i32* @FCNVME_LS_CREATE_ASSOCIATION, align 4
  %153 = call i32 @nvmet_fc_format_rsp_hdr(%struct.fcnvme_ls_cr_assoc_acc* %149, i32 %150, i8* %151, i32 %152)
  %154 = load i32, i32* @FCNVME_LSDESC_ASSOC_ID, align 4
  %155 = call i64 @cpu_to_be32(i32 %154)
  %156 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %157 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  store i64 %155, i64* %158, align 8
  %159 = call i8* @fcnvme_lsdesc_len(i32 4)
  %160 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %161 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %164 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @nvmet_fc_makeconnid(i32 %165, i32 0)
  %167 = call i32 @cpu_to_be64(i32 %166)
  %168 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %169 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 8
  %171 = load i32, i32* @FCNVME_LSDESC_CONN_ID, align 4
  %172 = call i64 @cpu_to_be32(i32 %171)
  %173 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %174 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  store i64 %172, i64* %175, align 8
  %176 = call i8* @fcnvme_lsdesc_len(i32 4)
  %177 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %178 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 1
  store i8* %176, i8** %179, align 8
  %180 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %181 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.fcnvme_ls_cr_assoc_acc*, %struct.fcnvme_ls_cr_assoc_acc** %6, align 8
  %185 = getelementptr inbounds %struct.fcnvme_ls_cr_assoc_acc, %struct.fcnvme_ls_cr_assoc_acc* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  br label %187

187:                                              ; preds = %132, %109
  ret void
}

declare dso_local i32 @memset(%struct.fcnvme_ls_cr_assoc_acc*, i32, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @nvmet_fc_alloc_target_assoc(%struct.nvmet_fc_tgtport*) #1

declare dso_local %struct.nvmet_fc_tgt_queue* @nvmet_fc_alloc_target_queue(i32, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @nvmet_fc_format_rjt(%struct.fcnvme_ls_cr_assoc_acc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nvmet_fc_format_rsp_hdr(%struct.fcnvme_ls_cr_assoc_acc*, i32, i8*, i32) #1

declare dso_local i8* @fcnvme_lsdesc_len(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @nvmet_fc_makeconnid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
