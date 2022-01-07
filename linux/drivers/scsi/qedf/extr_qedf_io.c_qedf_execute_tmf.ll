; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_execute_tmf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_execute_tmf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { i32, i32, %struct.fcoe_wqe*, %struct.qedf_ctx* }
%struct.fcoe_wqe = type { i32 }
%struct.qedf_ctx = type { i32, i32, i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.qedf_ioreq = type { i32, i64, i32, %struct.scsi_cmnd*, i32, i32, i32, i64, i64, i32, i32, i32, %struct.qedf_rport* }
%struct.e4_fcoe_task_context = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"sc_cmd is NULL\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"fcport not offloaded\0A\00", align 1
@QEDF_TASK_MGMT_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Failed TMF\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@FCP_TMF_LUN_RESET = common dso_local global i64 0, align 8
@FCP_TMF_TGT_RESET = common dso_local global i64 0, align 8
@QEDF_READ = common dso_local global i32 0, align 4
@QEDF_LOG_SCSI_TM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"TMF io_req xid = 0x%x\0A\00", align 1
@QEDF_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@QEDF_TM_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"wait for tm_cmpl timeout!\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@QEDF_RPORT_UPLOADING_CONNECTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"fcport is uploading, not executing flush.\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"task mgmt command failed...\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"task mgmt command success...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedf_rport*, %struct.scsi_cmnd*, i64)* @qedf_execute_tmf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_execute_tmf(%struct.qedf_rport* %0, %struct.scsi_cmnd* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedf_rport*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qedf_ioreq*, align 8
  %9 = alloca %struct.e4_fcoe_task_context*, align 8
  %10 = alloca %struct.qedf_ctx*, align 8
  %11 = alloca %struct.fc_lport*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.fcoe_wqe*, align 8
  %18 = alloca i64, align 8
  store %struct.qedf_rport* %0, %struct.qedf_rport** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %20 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %19, i32 0, i32 3
  %21 = load %struct.qedf_ctx*, %struct.qedf_ctx** %20, align 8
  store %struct.qedf_ctx* %21, %struct.qedf_ctx** %10, align 8
  %22 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %22, i32 0, i32 4
  %24 = load %struct.fc_lport*, %struct.fc_lport** %23, align 8
  store %struct.fc_lport* %24, %struct.fc_lport** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %26 = icmp ne %struct.scsi_cmnd* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %29 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %28, i32 0, i32 0
  %30 = call i32 @QEDF_ERR(i32* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @FAILED, align 4
  store i32 %31, i32* %4, align 4
  br label %218

32:                                               ; preds = %3
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %34 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %40 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %41 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %32
  %45 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %45, i32 0, i32 0
  %47 = call i32 @QEDF_ERR(i32* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @FAILED, align 4
  store i32 %48, i32* %12, align 4
  br label %202

49:                                               ; preds = %32
  %50 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %51 = load i32, i32* @QEDF_TASK_MGMT_CMD, align 4
  %52 = call %struct.qedf_ioreq* @qedf_alloc_cmd(%struct.qedf_rport* %50, i32 %51)
  store %struct.qedf_ioreq* %52, %struct.qedf_ioreq** %8, align 8
  %53 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %54 = icmp ne %struct.qedf_ioreq* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %57 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %56, i32 0, i32 0
  %58 = call i32 @QEDF_ERR(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %12, align 4
  br label %202

61:                                               ; preds = %49
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @FCP_TMF_LUN_RESET, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %67 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %80

70:                                               ; preds = %61
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @FCP_TMF_TGT_RESET, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %76 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %74, %70
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %82 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %83 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %82, i32 0, i32 3
  store %struct.scsi_cmnd* %81, %struct.scsi_cmnd** %83, align 8
  %84 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %85 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %86 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %85, i32 0, i32 12
  store %struct.qedf_rport* %84, %struct.qedf_rport** %86, align 8
  %87 = load i32, i32* @QEDF_TASK_MGMT_CMD, align 4
  %88 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %89 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %88, i32 0, i32 11
  store i32 %87, i32* %89, align 8
  %90 = call i32 (...) @smp_processor_id()
  %91 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %92 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %91, i32 0, i32 10
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @QEDF_READ, align 4
  %94 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %95 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %94, i32 0, i32 9
  store i32 %93, i32* %95, align 8
  %96 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %97 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %96, i32 0, i32 8
  store i64 0, i64* %97, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %100 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %99, i32 0, i32 7
  store i64 %98, i64* %100, align 8
  %101 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %102 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %104 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %13, align 4
  %106 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %107 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %106, i32 0, i32 0
  %108 = load i32, i32* @QEDF_LOG_SCSI_TM, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @QEDF_INFO(i32* %107, i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %112 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %111, i32 0, i32 1
  %113 = load i32, i32* %13, align 4
  %114 = call %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32* %112, i32 %113)
  store %struct.e4_fcoe_task_context* %114, %struct.e4_fcoe_task_context** %9, align 8
  %115 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %116 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %115, i32 0, i32 5
  %117 = call i32 @init_completion(i32* %116)
  %118 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %119 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %118, i32 0, i32 1
  %120 = load i64, i64* %16, align 8
  %121 = call i32 @spin_lock_irqsave(i32* %119, i64 %120)
  %122 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %123 = call i64 @qedf_get_sqe_idx(%struct.qedf_rport* %122)
  store i64 %123, i64* %18, align 8
  %124 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %125 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %124, i32 0, i32 2
  %126 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %125, align 8
  %127 = load i64, i64* %18, align 8
  %128 = getelementptr inbounds %struct.fcoe_wqe, %struct.fcoe_wqe* %126, i64 %127
  store %struct.fcoe_wqe* %128, %struct.fcoe_wqe** %17, align 8
  %129 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %17, align 8
  %130 = call i32 @memset(%struct.fcoe_wqe* %129, i32 0, i32 4)
  %131 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %132 = load %struct.fc_lport*, %struct.fc_lport** %11, align 8
  %133 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %134 = load %struct.e4_fcoe_task_context*, %struct.e4_fcoe_task_context** %9, align 8
  %135 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %17, align 8
  %136 = call i32 @qedf_init_task(%struct.qedf_rport* %131, %struct.fc_lport* %132, %struct.qedf_ioreq* %133, %struct.e4_fcoe_task_context* %134, %struct.fcoe_wqe* %135)
  %137 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %138 = call i32 @qedf_ring_doorbell(%struct.qedf_rport* %137)
  %139 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %140 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %139, i32 0, i32 1
  %141 = load i64, i64* %16, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  %143 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %144 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %145 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %144, i32 0, i32 4
  %146 = call i32 @set_bit(i32 %143, i32* %145)
  %147 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %148 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %147, i32 0, i32 5
  %149 = load i32, i32* @QEDF_TM_TIMEOUT, align 4
  %150 = load i32, i32* @HZ, align 4
  %151 = mul nsw i32 %149, %150
  %152 = call i32 @wait_for_completion_timeout(i32* %148, i32 %151)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %80
  %156 = load i32, i32* @FAILED, align 4
  store i32 %156, i32* %12, align 4
  %157 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %158 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %157, i32 0, i32 0
  %159 = call i32 @QEDF_ERR(i32* %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %160 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %161 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %162 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %161, i32 0, i32 4
  %163 = call i32 @clear_bit(i32 %160, i32* %162)
  %164 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %165 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %164, i32 0, i32 3
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %165, align 8
  br label %176

166:                                              ; preds = %80
  %167 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %168 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i32, i32* @SUCCESS, align 4
  store i32 %172, i32* %12, align 4
  br label %175

173:                                              ; preds = %166
  %174 = load i32, i32* @FAILED, align 4
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %173, %171
  br label %176

176:                                              ; preds = %175, %155
  %177 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %178 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %179 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %178, i32 0, i32 0
  %180 = call i64 @test_bit(i32 %177, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %184 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %183, i32 0, i32 0
  %185 = call i32 @QEDF_ERR(i32* %184, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %202

186:                                              ; preds = %176
  %187 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %8, align 8
  %188 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %187, i32 0, i32 2
  %189 = load i32, i32* @qedf_release_cmd, align 4
  %190 = call i32 @kref_put(i32* %188, i32 %189)
  %191 = load i64, i64* %7, align 8
  %192 = load i64, i64* @FCP_TMF_LUN_RESET, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @qedf_flush_active_ios(%struct.qedf_rport* %195, i32 %196)
  br label %201

198:                                              ; preds = %186
  %199 = load %struct.qedf_rport*, %struct.qedf_rport** %5, align 8
  %200 = call i32 @qedf_flush_active_ios(%struct.qedf_rport* %199, i32 -1)
  br label %201

201:                                              ; preds = %198, %194
  br label %202

202:                                              ; preds = %201, %182, %55, %44
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @SUCCESS, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %208 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %207, i32 0, i32 0
  %209 = call i32 @QEDF_ERR(i32* %208, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %210 = load i32, i32* @FAILED, align 4
  store i32 %210, i32* %12, align 4
  br label %216

211:                                              ; preds = %202
  %212 = load %struct.qedf_ctx*, %struct.qedf_ctx** %10, align 8
  %213 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %212, i32 0, i32 0
  %214 = call i32 @QEDF_ERR(i32* %213, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %215 = load i32, i32* @SUCCESS, align 4
  store i32 %215, i32* %12, align 4
  br label %216

216:                                              ; preds = %211, %206
  %217 = load i32, i32* %12, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %216, %27
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @QEDF_ERR(i32*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.qedf_ioreq* @qedf_alloc_cmd(%struct.qedf_rport*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i32) #1

declare dso_local %struct.e4_fcoe_task_context* @qedf_get_task_mem(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qedf_get_sqe_idx(%struct.qedf_rport*) #1

declare dso_local i32 @memset(%struct.fcoe_wqe*, i32, i32) #1

declare dso_local i32 @qedf_init_task(%struct.qedf_rport*, %struct.fc_lport*, %struct.qedf_ioreq*, %struct.e4_fcoe_task_context*, %struct.fcoe_wqe*) #1

declare dso_local i32 @qedf_ring_doorbell(%struct.qedf_rport*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @qedf_flush_active_ios(%struct.qedf_rport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
