; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_scsi_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw.c_qedi_scsi_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.qedi_conn** }
%struct.qedi_conn = type { i32, i32, i32 }
%union.iscsi_cqe = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.iscsi_data_in_hdr }
%struct.iscsi_data_in_hdr = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_task = type { i64, %struct.qedi_cmd* }
%struct.qedi_cmd = type { i32, i32, i32, i32, i64, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.iscsi_conn = type { i64, %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32 }
%struct.iscsi_scsi_rsp = type { i64, i32, i8*, i32, i32, i8*, i8*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.iscsi_hdr = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"sc_cmd is NULL!\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"SCp.ptr is NULL, returned in another context.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"sc_cmd->request is NULL, sc_cmd=%p.\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"request->q is NULL so request is not valid, sc_cmd=%p.\0A\00", align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i64 0, align 8
@ISCSI_COMMON_HDR_DATA_SEG_LEN_MASK = common dso_local global i32 0, align 4
@CQE_ERROR_BITMAP_UNDER_RUN_ERR = common dso_local global i32 0, align 4
@QEDI_LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [83 x i8] c"Under flow itt=0x%x proto flags=0x%x tid=0x%x cid 0x%x fw resid 0x%x sc dlen 0x%x\0A\00", align 1
@ISCSI_FLAG_CMD_UNDERFLOW = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_OVERFLOW = common dso_local global i32 0, align 4
@QEDI_LOG_TID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Freeing tid=0x%x for cid=0x%x\0A\00", align 1
@RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@qedi_io_tracing = common dso_local global i64 0, align 8
@QEDI_IO_TRACE_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedi_ctx*, %union.iscsi_cqe*, %struct.iscsi_task*, %struct.iscsi_conn*)* @qedi_scsi_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_scsi_completion(%struct.qedi_ctx* %0, %union.iscsi_cqe* %1, %struct.iscsi_task* %2, %struct.iscsi_conn* %3) #0 {
  %5 = alloca %struct.qedi_ctx*, align 8
  %6 = alloca %union.iscsi_cqe*, align 8
  %7 = alloca %struct.iscsi_task*, align 8
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.qedi_cmd*, align 8
  %11 = alloca %struct.iscsi_session*, align 8
  %12 = alloca %struct.iscsi_scsi_rsp*, align 8
  %13 = alloca %struct.iscsi_data_in_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.qedi_conn*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %5, align 8
  store %union.iscsi_cqe* %1, %union.iscsi_cqe** %6, align 8
  store %struct.iscsi_task* %2, %struct.iscsi_task** %7, align 8
  store %struct.iscsi_conn* %3, %struct.iscsi_conn** %8, align 8
  %18 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %19 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %18, i32 0, i32 1
  %20 = load %struct.qedi_cmd*, %struct.qedi_cmd** %19, align 8
  store %struct.qedi_cmd* %20, %struct.qedi_cmd** %10, align 8
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 1
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %22, align 8
  store %struct.iscsi_session* %23, %struct.iscsi_session** %11, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %17, align 8
  %24 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %25 = bitcast %union.iscsi_cqe* %24 to %struct.TYPE_13__*
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %16, align 8
  %28 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.qedi_conn**, %struct.qedi_conn*** %30, align 8
  %32 = load i64, i64* %16, align 8
  %33 = getelementptr inbounds %struct.qedi_conn*, %struct.qedi_conn** %31, i64 %32
  %34 = load %struct.qedi_conn*, %struct.qedi_conn** %33, align 8
  store %struct.qedi_conn* %34, %struct.qedi_conn** %15, align 8
  %35 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %36 = bitcast %union.iscsi_cqe* %35 to %struct.TYPE_13__*
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store %struct.iscsi_data_in_hdr* %38, %struct.iscsi_data_in_hdr** %13, align 8
  %39 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %40 = bitcast %union.iscsi_cqe* %39 to %struct.TYPE_13__*
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %17, align 8
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %46 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_bh(i32* %46)
  %48 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %49 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %48, i32 0, i32 5
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %49, align 8
  store %struct.scsi_cmnd* %50, %struct.scsi_cmnd** %9, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %52 = icmp ne %struct.scsi_cmnd* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %4
  %54 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @QEDI_WARN(i32* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %278

57:                                               ; preds = %4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @QEDI_WARN(i32* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %278

67:                                               ; preds = %57
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = icmp ne %struct.TYPE_15__* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %73, i32 0, i32 0
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %76 = call i32 (i32*, i8*, ...) @QEDI_WARN(i32* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %75)
  br label %278

77:                                               ; preds = %67
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %77
  %85 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %85, i32 0, i32 0
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %88 = call i32 (i32*, i8*, ...) @QEDI_WARN(i32* %86, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), %struct.scsi_cmnd* %87)
  br label %278

89:                                               ; preds = %77
  %90 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %91 = call i32 @qedi_iscsi_unmap_sg_list(%struct.qedi_cmd* %90)
  %92 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %93 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.iscsi_scsi_rsp*
  store %struct.iscsi_scsi_rsp* %95, %struct.iscsi_scsi_rsp** %12, align 8
  %96 = load %struct.iscsi_data_in_hdr*, %struct.iscsi_data_in_hdr** %13, align 8
  %97 = getelementptr inbounds %struct.iscsi_data_in_hdr, %struct.iscsi_data_in_hdr* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %100 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 8
  %101 = load %struct.iscsi_data_in_hdr*, %struct.iscsi_data_in_hdr** %13, align 8
  %102 = getelementptr inbounds %struct.iscsi_data_in_hdr, %struct.iscsi_data_in_hdr* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %106 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %105, i32 0, i32 6
  store i8* %104, i8** %106, align 8
  %107 = load %struct.iscsi_data_in_hdr*, %struct.iscsi_data_in_hdr** %13, align 8
  %108 = getelementptr inbounds %struct.iscsi_data_in_hdr, %struct.iscsi_data_in_hdr* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %112 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  %113 = load %union.iscsi_cqe*, %union.iscsi_cqe** %6, align 8
  %114 = bitcast %union.iscsi_cqe* %113 to %struct.TYPE_16__*
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %118 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %117, i32 0, i32 1
  %119 = load %struct.iscsi_session*, %struct.iscsi_session** %118, align 8
  %120 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @build_itt(i32 %116, i32 %121)
  %123 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %124 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 8
  %125 = load %struct.iscsi_data_in_hdr*, %struct.iscsi_data_in_hdr** %13, align 8
  %126 = getelementptr inbounds %struct.iscsi_data_in_hdr, %struct.iscsi_data_in_hdr* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %129 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load %struct.iscsi_data_in_hdr*, %struct.iscsi_data_in_hdr** %13, align 8
  %131 = getelementptr inbounds %struct.iscsi_data_in_hdr, %struct.iscsi_data_in_hdr* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %134 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.iscsi_data_in_hdr*, %struct.iscsi_data_in_hdr** %13, align 8
  %136 = getelementptr inbounds %struct.iscsi_data_in_hdr, %struct.iscsi_data_in_hdr* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %139 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = load %struct.iscsi_data_in_hdr*, %struct.iscsi_data_in_hdr** %13, align 8
  %141 = getelementptr inbounds %struct.iscsi_data_in_hdr, %struct.iscsi_data_in_hdr* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @cpu_to_be32(i32 %142)
  %144 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %145 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %147 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SAM_STAT_CHECK_CONDITION, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %89
  %152 = load %struct.iscsi_data_in_hdr*, %struct.iscsi_data_in_hdr** %13, align 8
  %153 = getelementptr inbounds %struct.iscsi_data_in_hdr, %struct.iscsi_data_in_hdr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @ISCSI_COMMON_HDR_DATA_SEG_LEN_MASK, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %14, align 4
  %157 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %158 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %162 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i8*
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @memcpy(i8* %160, i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %151, %89
  %168 = load i64, i64* %17, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load i64, i64* %17, align 8
  %172 = load i32, i32* @CQE_ERROR_BITMAP_UNDER_RUN_ERR, align 4
  %173 = call i64 @GET_FIELD(i64 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br label %175

175:                                              ; preds = %170, %167
  %176 = phi i1 [ false, %167 ], [ %174, %170 ]
  %177 = zext i1 %176 to i32
  %178 = call i64 @unlikely(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %218

180:                                              ; preds = %175
  %181 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %182 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %181, i32 0, i32 0
  %183 = load i32, i32* @QEDI_LOG_INFO, align 4
  %184 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %185 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.iscsi_data_in_hdr*, %struct.iscsi_data_in_hdr** %13, align 8
  %188 = getelementptr inbounds %struct.iscsi_data_in_hdr, %struct.iscsi_data_in_hdr* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %191 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %194 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %197 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %200 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %199)
  %201 = call i32 (i32*, i32, i8*, i32, i32, ...) @QEDI_INFO(i32* %182, i32 %183, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i32 %186, i32 %189, i32 %192, i32 %195, i8* %198, i32 %200)
  %202 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %203 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %202)
  %204 = call i8* @cpu_to_be32(i32 %203)
  %205 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %206 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %205, i32 0, i32 2
  store i8* %204, i8** %206, align 8
  %207 = load i32, i32* @ISCSI_FLAG_CMD_UNDERFLOW, align 4
  %208 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %209 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i32, i32* @ISCSI_FLAG_CMD_OVERFLOW, align 4
  %213 = xor i32 %212, -1
  %214 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %215 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %180, %175
  %219 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %220 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %219, i32 0, i32 1
  %221 = call i32 @spin_lock(i32* %220)
  %222 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %223 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i64 @likely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %218
  %228 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %229 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %228, i32 0, i32 0
  store i32 0, i32* %229, align 8
  %230 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %231 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %230, i32 0, i32 3
  %232 = call i32 @list_del_init(i32* %231)
  %233 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %234 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %227, %218
  %238 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %239 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %238, i32 0, i32 1
  %240 = call i32 @spin_unlock(i32* %239)
  %241 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %242 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %241, i32 0, i32 0
  %243 = load i32, i32* @QEDI_LOG_TID, align 4
  %244 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %245 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.qedi_conn*, %struct.qedi_conn** %15, align 8
  %248 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i32*, i32, i8*, i32, i32, ...) @QEDI_INFO(i32* %242, i32 %243, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %246, i32 %249)
  %251 = load i32, i32* @RESPONSE_RECEIVED, align 4
  %252 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %253 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 8
  %254 = load i64, i64* @qedi_io_tracing, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %237
  %257 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %258 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %259 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %260 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @QEDI_IO_TRACE_RSP, align 4
  %263 = call i32 @qedi_trace_io(%struct.qedi_ctx* %257, %struct.iscsi_task* %258, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %256, %237
  %265 = load %struct.qedi_ctx*, %struct.qedi_ctx** %5, align 8
  %266 = load %struct.qedi_cmd*, %struct.qedi_cmd** %10, align 8
  %267 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @qedi_clear_task_idx(%struct.qedi_ctx* %265, i32 %268)
  %270 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %271 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %12, align 8
  %272 = bitcast %struct.iscsi_scsi_rsp* %271 to %struct.iscsi_hdr*
  %273 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %274 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* %14, align 4
  %277 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %270, %struct.iscsi_hdr* %272, i64 %275, i32 %276)
  br label %278

278:                                              ; preds = %264, %84, %72, %63, %53
  %279 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  %280 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %279, i32 0, i32 0
  %281 = call i32 @spin_unlock_bh(i32* %280)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @QEDI_WARN(i32*, i8*, ...) #1

declare dso_local i32 @qedi_iscsi_unmap_sg_list(%struct.qedi_cmd*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @build_itt(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @GET_FIELD(i64, i32) #1

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qedi_trace_io(%struct.qedi_ctx*, %struct.iscsi_task*, i32, i32) #1

declare dso_local i32 @qedi_clear_task_idx(%struct.qedi_ctx*, i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
