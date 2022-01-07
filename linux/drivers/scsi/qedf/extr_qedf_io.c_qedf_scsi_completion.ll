; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_scsi_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_scsi_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.fcoe_cqe = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.fcoe_cqe_rsp_info }
%struct.fcoe_cqe_rsp_info = type { i32, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.qedf_ioreq = type { i32, i32, i32, i32, i32, %struct.scsi_cmnd*, i32, i64, i64, %struct.qedf_rport* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_10__, i32*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.qedf_rport = type { i32, i64, i32 }
%struct.e4_fcoe_task_context = type { i32 }

@QEDF_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@QEDF_CMD_IN_CLEANUP = common dso_local global i32 0, align 4
@QEDF_CMD_IN_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"io_req xid=0x%x already in cleanup or abort processing or already completed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"sc_cmd is NULL!\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"SCp.ptr is NULL, returned in another context.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Device for sc_cmd %p is NULL.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"sc_cmd->request is NULL, sc_cmd=%p.\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"request->q is NULL so request is not valid, sc_cmd=%p.\0A\00", align 1
@QEDF_RPORT_IN_TARGET_RESET = common dso_local global i32 0, align 4
@QEDF_RPORT_IN_LUN_RESET = common dso_local global i32 0, align 4
@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"Dropping good completion xid=0x%x as fcport is flushing\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"FCP I/O protocol failure xid=0x%x fcp_rsp_len=%d fcp_rsp_code=%d.\0A\00", align 1
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@FCOE_CQE_RSP_INFO_FW_UNDERRUN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [111 x i8] c"Firmware detected underrun: xid=0x%x fcp_rsp.flags=0x%02x fcp_resid=%d fw_residual=0x%x lba=%02x%02x%02x%02x.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [97 x i8] c"%d:0:%d:%lld xid=0x%0x op=0x%02x lba=%02x%02x%02x%02x cdb_status=%d fcp_resid=0x%x refcount=%d.\0A\00", align 1
@SAM_STAT_TASK_SET_FULL = common dso_local global i32 0, align 4
@SAM_STAT_BUSY = common dso_local global i32 0, align 4
@qedf_retry_delay = common dso_local global i32 0, align 4
@QEDF_RETRY_DELAY_MAX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"fcp_status=%d.\0A\00", align 1
@qedf_io_tracing = common dso_local global i64 0, align 8
@QEDF_IO_TRACE_RSP = common dso_local global i32 0, align 4
@qedf_release_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_scsi_completion(%struct.qedf_ctx* %0, %struct.fcoe_cqe* %1, %struct.qedf_ioreq* %2) #0 {
  %4 = alloca %struct.qedf_ctx*, align 8
  %5 = alloca %struct.fcoe_cqe*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.e4_fcoe_task_context*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.fcoe_cqe_rsp_info*, align 8
  %11 = alloca %struct.qedf_rport*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %4, align 8
  store %struct.fcoe_cqe* %1, %struct.fcoe_cqe** %5, align 8
  store %struct.qedf_ioreq* %2, %struct.qedf_ioreq** %6, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %17 = icmp ne %struct.qedf_ioreq* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %446

19:                                               ; preds = %3
  %20 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %21 = icmp ne %struct.fcoe_cqe* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %446

23:                                               ; preds = %19
  %24 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %25 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %26 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %25, i32 0, i32 6
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32, i32* @QEDF_CMD_IN_CLEANUP, align 4
  %31 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %32 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %31, i32 0, i32 6
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @QEDF_CMD_IN_ABORT, align 4
  %37 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %38 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %37, i32 0, i32 6
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35, %29, %23
  %42 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %42, i32 0, i32 0
  %44 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %45 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %43, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %446

48:                                               ; preds = %35
  %49 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %50 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %7, align 4
  %52 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %52, i32 0, i32 4
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32* %53, i32 %54)
  store %struct.e4_fcoe_task_context* %55, %struct.e4_fcoe_task_context** %8, align 8
  %56 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %57 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %56, i32 0, i32 5
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %57, align 8
  store %struct.scsi_cmnd* %58, %struct.scsi_cmnd** %9, align 8
  %59 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %60 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store %struct.fcoe_cqe_rsp_info* %61, %struct.fcoe_cqe_rsp_info** %10, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %63 = icmp ne %struct.scsi_cmnd* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %48
  %65 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %446

68:                                               ; preds = %48
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %75, i32 0, i32 0
  %77 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %76, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %446

78:                                               ; preds = %68
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %80 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %79, i32 0, i32 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = icmp ne %struct.TYPE_12__* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %84, i32 0, i32 0
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %87 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.scsi_cmnd* %86)
  br label %446

88:                                               ; preds = %78
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 5
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = icmp ne %struct.TYPE_11__* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %95 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %94, i32 0, i32 0
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %97 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), %struct.scsi_cmnd* %96)
  br label %446

98:                                               ; preds = %88
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 5
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %98
  %106 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %107 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %106, i32 0, i32 0
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %109 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %107, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), %struct.scsi_cmnd* %108)
  br label %446

110:                                              ; preds = %98
  %111 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %112 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %111, i32 0, i32 9
  %113 = load %struct.qedf_rport*, %struct.qedf_rport** %112, align 8
  store %struct.qedf_rport* %113, %struct.qedf_rport** %11, align 8
  %114 = load i32, i32* @QEDF_RPORT_IN_TARGET_RESET, align 4
  %115 = load %struct.qedf_rport*, %struct.qedf_rport** %11, align 8
  %116 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %115, i32 0, i32 2
  %117 = call i64 @test_bit(i32 %114, i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %135, label %119

119:                                              ; preds = %110
  %120 = load i32, i32* @QEDF_RPORT_IN_LUN_RESET, align 4
  %121 = load %struct.qedf_rport*, %struct.qedf_rport** %11, align 8
  %122 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %121, i32 0, i32 2
  %123 = call i64 @test_bit(i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %127 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %126, i32 0, i32 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.qedf_rport*, %struct.qedf_rport** %11, align 8
  %132 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %125, %110
  %136 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %137 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %136, i32 0, i32 0
  %138 = load i32, i32* @QEDF_LOG_IO, align 4
  %139 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %140 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %137, i32 %138, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  br label %446

143:                                              ; preds = %125, %119
  %144 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %145 = load %struct.fcoe_cqe_rsp_info*, %struct.fcoe_cqe_rsp_info** %10, align 8
  %146 = call i32 @qedf_parse_fcp_rsp(%struct.qedf_ioreq* %144, %struct.fcoe_cqe_rsp_info* %145)
  %147 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %148 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %149 = call i32 @qedf_unmap_sg_list(%struct.qedf_ctx* %147, %struct.qedf_ioreq* %148)
  %150 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %151 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 3
  br i1 %153, label %154, label %176

154:                                              ; preds = %143
  %155 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %156 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %155, i32 0, i32 8
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %161 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %160, i32 0, i32 0
  %162 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %163 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %166 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %169 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %168, i32 0, i32 8
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %161, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0), i32 %164, i32 %167, i64 %170)
  %172 = load i32, i32* @DID_BUS_BUSY, align 4
  %173 = shl i32 %172, 16
  %174 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %175 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  br label %419

176:                                              ; preds = %154, %143
  %177 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %178 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.fcoe_cqe_rsp_info, %struct.fcoe_cqe_rsp_info* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @FCOE_CQE_RSP_INFO_FW_UNDERRUN, align 4
  %183 = call i64 @GET_FIELD(i32 %181, i32 %182)
  store i64 %183, i64* %15, align 8
  %184 = load i64, i64* %15, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %252

186:                                              ; preds = %176
  %187 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %188 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %187, i32 0, i32 0
  %189 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %190 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.fcoe_cqe_rsp_info*, %struct.fcoe_cqe_rsp_info** %10, align 8
  %193 = getelementptr inbounds %struct.fcoe_cqe_rsp_info, %struct.fcoe_cqe_rsp_info* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %197 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.fcoe_cqe*, %struct.fcoe_cqe** %5, align 8
  %200 = getelementptr inbounds %struct.fcoe_cqe, %struct.fcoe_cqe* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.fcoe_cqe_rsp_info, %struct.fcoe_cqe_rsp_info* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %205 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %210 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %215 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 4
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %220 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 5
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %188, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.8, i64 0, i64 0), i32 %191, i32 %195, i64 %198, i32 %203, i32 %208, i32 %213, i32 %218, i32 %223)
  %225 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %226 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %186
  %230 = load i32, i32* @DID_ERROR, align 4
  %231 = shl i32 %230, 16
  %232 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %233 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %231, %234
  %236 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %237 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  br label %247

238:                                              ; preds = %186
  %239 = load i32, i32* @DID_OK, align 4
  %240 = shl i32 %239, 16
  %241 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %242 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = or i32 %240, %243
  %245 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %246 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  br label %247

247:                                              ; preds = %238, %229
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %249 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %250 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %249)
  %251 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %248, i64 %250)
  br label %419

252:                                              ; preds = %176
  %253 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %254 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %410 [
    i32 128, label %256
  ]

256:                                              ; preds = %252
  %257 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %258 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = load i32, i32* @DID_OK, align 4
  %263 = shl i32 %262, 16
  %264 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %265 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  br label %398

266:                                              ; preds = %256
  %267 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %268 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %267, i32 0, i32 4
  %269 = call i32 @kref_read(i32* %268)
  store i32 %269, i32* %12, align 4
  %270 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %271 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %270, i32 0, i32 0
  %272 = load i32, i32* @QEDF_LOG_IO, align 4
  %273 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %274 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %273, i32 0, i32 3
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %281 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %280, i32 0, i32 4
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %286 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %285, i32 0, i32 4
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %291 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %294 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %293, i32 0, i32 3
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %299 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %298, i32 0, i32 3
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %304 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %303, i32 0, i32 3
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 3
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %309 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %308, i32 0, i32 3
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 4
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %314 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 5
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %319 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %322 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %321, i32 0, i32 7
  %323 = load i64, i64* %322, align 8
  %324 = load i32, i32* %12, align 4
  %325 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %271, i32 %272, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.9, i64 0, i64 0), i32 %279, i32 %284, i64 %289, i32 %292, i32 %297, i32 %302, i32 %307, i32 %312, i32 %317, i32 %320, i64 %323, i32 %324)
  %326 = load i32, i32* @DID_OK, align 4
  %327 = shl i32 %326, 16
  %328 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %329 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = or i32 %327, %330
  %332 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %333 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 8
  %334 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %335 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %345, label %339

339:                                              ; preds = %266
  %340 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %341 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @SAM_STAT_BUSY, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %397

345:                                              ; preds = %339, %266
  %346 = load %struct.fcoe_cqe_rsp_info*, %struct.fcoe_cqe_rsp_info** %10, align 8
  %347 = getelementptr inbounds %struct.fcoe_cqe_rsp_info, %struct.fcoe_cqe_rsp_info* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = and i32 %348, 49152
  store i32 %349, i32* %13, align 4
  %350 = load %struct.fcoe_cqe_rsp_info*, %struct.fcoe_cqe_rsp_info** %10, align 8
  %351 = getelementptr inbounds %struct.fcoe_cqe_rsp_info, %struct.fcoe_cqe_rsp_info* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = and i32 %352, 16383
  store i32 %353, i32* %14, align 4
  %354 = load i32, i32* @qedf_retry_delay, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %380

356:                                              ; preds = %345
  %357 = load i32, i32* %13, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %380

359:                                              ; preds = %356
  %360 = load i32, i32* %14, align 4
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %380

362:                                              ; preds = %359
  %363 = load i32, i32* %14, align 4
  %364 = icmp sle i32 %363, 16367
  br i1 %364, label %365, label %380

365:                                              ; preds = %362
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* @QEDF_RETRY_DELAY_MAX, align 4
  %368 = icmp sgt i32 %366, %367
  br i1 %368, label %369, label %371

369:                                              ; preds = %365
  %370 = load i32, i32* @QEDF_RETRY_DELAY_MAX, align 4
  store i32 %370, i32* %14, align 4
  br label %371

371:                                              ; preds = %369, %365
  %372 = load i32, i32* @jiffies, align 4
  %373 = load i32, i32* %14, align 4
  %374 = load i32, i32* @HZ, align 4
  %375 = mul nsw i32 %373, %374
  %376 = sdiv i32 %375, 10
  %377 = add nsw i32 %372, %376
  %378 = load %struct.qedf_rport*, %struct.qedf_rport** %11, align 8
  %379 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %378, i32 0, i32 0
  store i32 %377, i32* %379, align 8
  br label %380

380:                                              ; preds = %371, %362, %359, %356, %345
  %381 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %382 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @SAM_STAT_TASK_SET_FULL, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %391

386:                                              ; preds = %380
  %387 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %388 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %388, align 8
  br label %396

391:                                              ; preds = %380
  %392 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %393 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %391, %386
  br label %397

397:                                              ; preds = %396, %339
  br label %398

398:                                              ; preds = %397, %261
  %399 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %400 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %399, i32 0, i32 7
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %398
  %404 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %405 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %406 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %405, i32 0, i32 7
  %407 = load i64, i64* %406, align 8
  %408 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %404, i64 %407)
  br label %409

409:                                              ; preds = %403, %398
  br label %418

410:                                              ; preds = %252
  %411 = load %struct.qedf_ctx*, %struct.qedf_ctx** %4, align 8
  %412 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %411, i32 0, i32 0
  %413 = load i32, i32* @QEDF_LOG_IO, align 4
  %414 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %415 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %412, i32 %413, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %416)
  br label %418

418:                                              ; preds = %410, %409
  br label %419

419:                                              ; preds = %418, %247, %159
  %420 = load i64, i64* @qedf_io_tracing, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %427

422:                                              ; preds = %419
  %423 = load %struct.qedf_rport*, %struct.qedf_rport** %11, align 8
  %424 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %425 = load i32, i32* @QEDF_IO_TRACE_RSP, align 4
  %426 = call i32 @qedf_trace_io(%struct.qedf_rport* %423, %struct.qedf_ioreq* %424, i32 %425)
  br label %427

427:                                              ; preds = %422, %419
  %428 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %429 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %430 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %429, i32 0, i32 6
  %431 = call i32 @clear_bit(i32 %428, i32* %430)
  %432 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %433 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %432, i32 0, i32 5
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %433, align 8
  %434 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %435 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %434, i32 0, i32 2
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 0
  store i32* null, i32** %436, align 8
  %437 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %438 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %437, i32 0, i32 1
  %439 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %438, align 8
  %440 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %441 = call i32 %439(%struct.scsi_cmnd* %440)
  %442 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %443 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %442, i32 0, i32 4
  %444 = load i32, i32* @qedf_release_cmd, align 4
  %445 = call i32 @kref_put(i32* %443, i32 %444)
  br label %446

446:                                              ; preds = %427, %135, %105, %93, %83, %74, %64, %41, %22, %18
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32*, i32) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*, ...) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @qedf_parse_fcp_rsp(%struct.qedf_ioreq*, %struct.fcoe_cqe_rsp_info*) #1

declare dso_local i32 @qedf_unmap_sg_list(%struct.qedf_ctx*, %struct.qedf_ioreq*) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @qedf_trace_io(%struct.qedf_rport*, %struct.qedf_ioreq*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
