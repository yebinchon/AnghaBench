; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_initiate_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_initiate_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { i32, i64, i32, i32, i32*, i32, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.qedf_rport* }
%struct.TYPE_6__ = type { %struct.fcoe_wqe* }
%struct.fcoe_wqe = type { i32 }
%struct.qedf_rport = type { i32, %struct.fcoe_wqe*, %struct.TYPE_5__*, i32, %struct.qedf_ctx*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qedf_ctx = type { i32, i32 }
%struct.e4_fcoe_task_context = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"fcport is NULL.\0A\00", align 1
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"tgt not offloaded\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"qedf is NULL.\0A\00", align 1
@QEDF_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@QEDF_CMD_IN_CLEANUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"io_req xid=0x%x already in cleanup processing or already completed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"No SQ entries available\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@QEDF_CLEANUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"io_req=0x%x is already a cleanup command cmd_type=%d.\0A\00", align 1
@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [89 x i8] c"Entered xid=0x%x sc_cmd=%p cmd_type=%d flags=0x%lx refcount=%d fcport=%p port_id=0x%06x\0A\00", align 1
@QEDF_CLEANUP_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Cleanup command timeout, xid=%x.\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Issuing MCP drain request.\0A\00", align 1
@FCP_TMF_LUN_RESET = common dso_local global i64 0, align 8
@FCP_TMF_TGT_RESET = common dso_local global i64 0, align 8
@QEDF_LOG_SCSI_TM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Not call scsi_done for xid=0x%x.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@QEDF_IOREQ_EV_CLEANUP_SUCCESS = common dso_local global i32 0, align 4
@QEDF_IOREQ_EV_CLEANUP_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedf_initiate_cleanup(%struct.qedf_ioreq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedf_ioreq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedf_rport*, align 8
  %7 = alloca %struct.qedf_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.e4_fcoe_task_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.fcoe_wqe*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @SUCCESS, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %18 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %17, i32 0, i32 11
  %19 = load %struct.qedf_rport*, %struct.qedf_rport** %18, align 8
  store %struct.qedf_rport* %19, %struct.qedf_rport** %6, align 8
  %20 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %21 = icmp ne %struct.qedf_rport* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %264

25:                                               ; preds = %2
  %26 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %27 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %28 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %27, i32 0, i32 5
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  %33 = load i32, i32* @SUCCESS, align 4
  store i32 %33, i32* %3, align 4
  br label %264

34:                                               ; preds = %25
  %35 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %36 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %35, i32 0, i32 4
  %37 = load %struct.qedf_ctx*, %struct.qedf_ctx** %36, align 8
  store %struct.qedf_ctx* %37, %struct.qedf_ctx** %7, align 8
  %38 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %39 = icmp ne %struct.qedf_ctx* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @SUCCESS, align 4
  store i32 %42, i32* %3, align 4
  br label %264

43:                                               ; preds = %34
  %44 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %45 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %46 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %45, i32 0, i32 6
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* @QEDF_CMD_IN_CLEANUP, align 4
  %51 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %52 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %51, i32 0, i32 6
  %53 = call i64 @test_and_set_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49, %43
  %56 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %56, i32 0, i32 0
  %58 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %59 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %57, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %264

63:                                               ; preds = %49
  %64 = load i32, i32* @QEDF_CMD_IN_CLEANUP, align 4
  %65 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %66 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %65, i32 0, i32 6
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %69 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %68, i32 0, i32 3
  %70 = call i32 @atomic_read(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %63
  %73 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %74 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %73, i32 0, i32 0
  %75 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @QEDF_CMD_IN_CLEANUP, align 4
  %77 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %78 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %77, i32 0, i32 6
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load i32, i32* @FAILED, align 4
  store i32 %80, i32* %3, align 4
  br label %264

81:                                               ; preds = %63
  %82 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %83 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @QEDF_CLEANUP, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %89 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %88, i32 0, i32 0
  %90 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %91 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %94 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %89, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %92, i32 %95)
  %97 = load i32, i32* @QEDF_CMD_IN_CLEANUP, align 4
  %98 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %99 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %98, i32 0, i32 6
  %100 = call i32 @clear_bit(i32 %97, i32* %99)
  %101 = load i32, i32* @SUCCESS, align 4
  store i32 %101, i32* %3, align 4
  br label %264

102:                                              ; preds = %81
  %103 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %104 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %103, i32 0, i32 10
  %105 = call i32 @kref_read(i32* %104)
  store i32 %105, i32* %15, align 4
  %106 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %107 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* @QEDF_LOG_IO, align 4
  %109 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %110 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %113 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %116 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %119 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %123 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %124 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %107, i32 %108, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i32 %111, i32* %114, i32 %117, i32 %120, i32 %121, %struct.qedf_rport* %122, i32 %128)
  %130 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %131 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* @QEDF_CLEANUP, align 4
  %134 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %135 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %134, i32 0, i32 9
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %138 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %140 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %139, i32 0, i32 1
  %141 = load i32, i32* %8, align 4
  %142 = call %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32* %140, i32 %141)
  store %struct.e4_fcoe_task_context* %142, %struct.e4_fcoe_task_context** %9, align 8
  %143 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %144 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %143, i32 0, i32 7
  %145 = call i32 @init_completion(i32* %144)
  %146 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %147 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %146, i32 0, i32 0
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %151 = call i64 @qedf_get_sqe_idx(%struct.qedf_rport* %150)
  store i64 %151, i64* %14, align 8
  %152 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %153 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %152, i32 0, i32 1
  %154 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %153, align 8
  %155 = load i64, i64* %14, align 8
  %156 = getelementptr inbounds %struct.fcoe_wqe, %struct.fcoe_wqe* %154, i64 %155
  store %struct.fcoe_wqe* %156, %struct.fcoe_wqe** %13, align 8
  %157 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %13, align 8
  %158 = call i32 @memset(%struct.fcoe_wqe* %157, i32 0, i32 4)
  %159 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %13, align 8
  %160 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %161 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %160, i32 0, i32 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store %struct.fcoe_wqe* %159, %struct.fcoe_wqe** %163, align 8
  %164 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %165 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %164, i32 0, i32 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = call i32 @init_initiator_cleanup_fcoe_task(%struct.TYPE_6__* %166)
  %168 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %169 = call i32 @qedf_ring_doorbell(%struct.qedf_rport* %168)
  %170 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %171 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %170, i32 0, i32 0
  %172 = load i64, i64* %12, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  %174 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %175 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %174, i32 0, i32 7
  %176 = load i32, i32* @QEDF_CLEANUP_TIMEOUT, align 4
  %177 = load i32, i32* @HZ, align 4
  %178 = mul nsw i32 %176, %177
  %179 = call i32 @wait_for_completion_timeout(i32* %175, i32 %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %199, label %182

182:                                              ; preds = %102
  %183 = load i32, i32* @FAILED, align 4
  store i32 %183, i32* %11, align 4
  %184 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %185 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %184, i32 0, i32 0
  %186 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %187 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @QEDF_CMD_IN_CLEANUP, align 4
  %191 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %192 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %191, i32 0, i32 6
  %193 = call i32 @clear_bit(i32 %190, i32* %192)
  %194 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %195 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %194, i32 0, i32 0
  %196 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %195, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %197 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %198 = call i32 @qedf_drain_request(%struct.qedf_ctx* %197)
  br label %199

199:                                              ; preds = %182, %102
  %200 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %201 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @FCP_TMF_LUN_RESET, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %207 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @FCP_TMF_TGT_RESET, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %205, %199
  %212 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %213 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %214 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %213, i32 0, i32 6
  %215 = call i32 @clear_bit(i32 %212, i32* %214)
  %216 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %217 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %216, i32 0, i32 4
  store i32* null, i32** %217, align 8
  %218 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %219 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %218, i32 0, i32 5
  %220 = call i32 @complete(i32* %219)
  br label %221

221:                                              ; preds = %211, %205
  %222 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %223 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %250

226:                                              ; preds = %221
  %227 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %228 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %226
  %232 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %233 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %232, i32 0, i32 0
  %234 = load i32, i32* @QEDF_LOG_SCSI_TM, align 4
  %235 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %236 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (i32*, i32, i8*, i32, ...) @QEDF_INFO(i32* %233, i32 %234, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %231, %226
  %240 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %241 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %246 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %247 = load i32, i32* @DID_ERROR, align 4
  %248 = call i32 @qedf_scsi_done(%struct.qedf_ctx* %245, %struct.qedf_ioreq* %246, i32 %247)
  br label %249

249:                                              ; preds = %244, %239
  br label %250

250:                                              ; preds = %249, %221
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* @SUCCESS, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %250
  %255 = load i32, i32* @QEDF_IOREQ_EV_CLEANUP_SUCCESS, align 4
  %256 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %257 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 8
  br label %262

258:                                              ; preds = %250
  %259 = load i32, i32* @QEDF_IOREQ_EV_CLEANUP_FAILED, align 4
  %260 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %261 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  br label %262

262:                                              ; preds = %258, %254
  %263 = load i32, i32* %11, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %262, %87, %72, %55, %40, %31, %22
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32, ...) #1

declare dso_local %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qedf_get_sqe_idx(%struct.qedf_rport*) #1

declare dso_local i32 @memset(%struct.fcoe_wqe*, i32, i32) #1

declare dso_local i32 @init_initiator_cleanup_fcoe_task(%struct.TYPE_6__*) #1

declare dso_local i32 @qedf_ring_doorbell(%struct.qedf_rport*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @qedf_drain_request(%struct.qedf_ctx*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @qedf_scsi_done(%struct.qedf_ctx*, %struct.qedf_ioreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
