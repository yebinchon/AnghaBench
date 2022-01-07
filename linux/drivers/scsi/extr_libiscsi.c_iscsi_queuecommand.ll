; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.iscsi_conn* }
%struct.TYPE_4__ = type { i64 (%struct.iscsi_task*)* }
%struct.iscsi_task = type { i32 }
%struct.iscsi_conn = type { i32, i32, i32 }
%struct.iscsi_host = type { i32 }

@ISCSI_STATE_LOGGED_IN = common dso_local global i32 0, align 4
@system_state = common dso_local global i32 0, align 4
@SYSTEM_RUNNING = common dso_local global i32 0, align 4
@FAILURE_SESSION_FAILED = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@FAILURE_SESSION_IN_RECOVERY = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@FAILURE_SESSION_LOGGING_OUT = common dso_local global i32 0, align 4
@FAILURE_SESSION_RECOVERY_TIMEOUT = common dso_local global i32 0, align 4
@DID_TRANSPORT_FAILFAST = common dso_local global i32 0, align 4
@FAILURE_SESSION_TERMINATE = common dso_local global i32 0, align 4
@FAILURE_SESSION_FREED = common dso_local global i32 0, align 4
@ISCSI_SUSPEND_BIT = common dso_local global i32 0, align 4
@DID_REQUEUE = common dso_local global i32 0, align 4
@FAILURE_WINDOW_CLOSED = common dso_local global i32 0, align 4
@FAILURE_OOM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@FAILURE_SESSION_NOT_READY = common dso_local global i32 0, align 4
@ISCSI_TASK_REQUEUE_SCSIQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cmd 0x%x rejected (%d)\0A\00", align 1
@SCSI_MLQUEUE_TARGET_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"iscsi: cmd 0x%x is not queued (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_session*, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_task*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i32 0, i32* %8, align 4
  store %struct.iscsi_task* null, %struct.iscsi_task** %11, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %18 = call %struct.iscsi_host* @shost_priv(%struct.Scsi_Host* %17)
  store %struct.iscsi_host* %18, %struct.iscsi_host** %7, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @scsi_target(i32 %21)
  %23 = call %struct.iscsi_cls_session* @starget_to_session(i32 %22)
  store %struct.iscsi_cls_session* %23, %struct.iscsi_cls_session** %6, align 8
  %24 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %24, i32 0, i32 0
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %25, align 8
  store %struct.iscsi_session* %26, %struct.iscsi_session** %9, align 8
  %27 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %28 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %31 = call i32 @iscsi_session_chkready(%struct.iscsi_cls_session* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %229

38:                                               ; preds = %2
  %39 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %40 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ISCSI_STATE_LOGGED_IN, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %38
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %46 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %86 [
    i32 132, label %48
    i32 131, label %62
    i32 130, label %68
    i32 129, label %74
    i32 128, label %80
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* @system_state, align 4
  %50 = load i32, i32* @SYSTEM_RUNNING, align 4
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @unlikely(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* @FAILURE_SESSION_FAILED, align 4
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @DID_NO_CONNECT, align 4
  %58 = shl i32 %57, 16
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %92

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %44, %61
  %63 = load i32, i32* @FAILURE_SESSION_IN_RECOVERY, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @DID_IMM_RETRY, align 4
  %65 = shl i32 %64, 16
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %67 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %92

68:                                               ; preds = %44
  %69 = load i32, i32* @FAILURE_SESSION_LOGGING_OUT, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @DID_IMM_RETRY, align 4
  %71 = shl i32 %70, 16
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %92

74:                                               ; preds = %44
  %75 = load i32, i32* @FAILURE_SESSION_RECOVERY_TIMEOUT, align 4
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @DID_TRANSPORT_FAILFAST, align 4
  %77 = shl i32 %76, 16
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %92

80:                                               ; preds = %44
  %81 = load i32, i32* @FAILURE_SESSION_TERMINATE, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* @DID_NO_CONNECT, align 4
  %83 = shl i32 %82, 16
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %92

86:                                               ; preds = %44
  %87 = load i32, i32* @FAILURE_SESSION_FREED, align 4
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @DID_NO_CONNECT, align 4
  %89 = shl i32 %88, 16
  %90 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %86, %80, %74, %68, %62, %55
  br label %229

93:                                               ; preds = %38
  %94 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %95 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %94, i32 0, i32 6
  %96 = load %struct.iscsi_conn*, %struct.iscsi_conn** %95, align 8
  store %struct.iscsi_conn* %96, %struct.iscsi_conn** %10, align 8
  %97 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %98 = icmp ne %struct.iscsi_conn* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @FAILURE_SESSION_FREED, align 4
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @DID_NO_CONNECT, align 4
  %102 = shl i32 %101, 16
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %229

105:                                              ; preds = %93
  %106 = load i32, i32* @ISCSI_SUSPEND_BIT, align 4
  %107 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %108 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %107, i32 0, i32 2
  %109 = call i64 @test_bit(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32, i32* @FAILURE_SESSION_IN_RECOVERY, align 4
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* @DID_REQUEUE, align 4
  %114 = shl i32 %113, 16
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %229

117:                                              ; preds = %105
  %118 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %119 = call i64 @iscsi_check_cmdsn_window_closed(%struct.iscsi_conn* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @FAILURE_WINDOW_CLOSED, align 4
  store i32 %122, i32* %8, align 4
  br label %206

123:                                              ; preds = %117
  %124 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %126 = call %struct.iscsi_task* @iscsi_alloc_task(%struct.iscsi_conn* %124, %struct.scsi_cmnd* %125)
  store %struct.iscsi_task* %126, %struct.iscsi_task** %11, align 8
  %127 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %128 = icmp ne %struct.iscsi_task* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @FAILURE_OOM, align 4
  store i32 %130, i32* %8, align 4
  br label %206

131:                                              ; preds = %123
  %132 = load %struct.iscsi_host*, %struct.iscsi_host** %7, align 8
  %133 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %174, label %136

136:                                              ; preds = %131
  %137 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %138 = call i32 @iscsi_prep_scsi_cmd_pdu(%struct.iscsi_task* %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %136
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @EACCES, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %146, %141
  %152 = load i32, i32* @FAILURE_OOM, align 4
  store i32 %152, i32* %8, align 4
  br label %196

153:                                              ; preds = %146
  %154 = load i32, i32* @DID_ABORT, align 4
  %155 = shl i32 %154, 16
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %157 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %219

158:                                              ; preds = %136
  %159 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %160 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %159, i32 0, i32 5
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i64 (%struct.iscsi_task*)*, i64 (%struct.iscsi_task*)** %162, align 8
  %164 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %165 = call i64 %163(%struct.iscsi_task* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  %168 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %169 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %169, align 8
  %172 = load i32, i32* @FAILURE_SESSION_NOT_READY, align 4
  store i32 %172, i32* %8, align 4
  br label %196

173:                                              ; preds = %158
  br label %188

174:                                              ; preds = %131
  %175 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %176 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %175, i32 0, i32 0
  %177 = call i32 @spin_lock_bh(i32* %176)
  %178 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %179 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %178, i32 0, i32 0
  %180 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %181 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %180, i32 0, i32 1
  %182 = call i32 @list_add_tail(i32* %179, i32* %181)
  %183 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %184 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %183, i32 0, i32 0
  %185 = call i32 @spin_unlock_bh(i32* %184)
  %186 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %187 = call i32 @iscsi_conn_queue_work(%struct.iscsi_conn* %186)
  br label %188

188:                                              ; preds = %174, %173
  %189 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %190 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %194 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %193, i32 0, i32 1
  %195 = call i32 @spin_unlock_bh(i32* %194)
  store i32 0, i32* %3, align 4
  br label %250

196:                                              ; preds = %167, %151
  %197 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %198 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %197, i32 0, i32 2
  %199 = call i32 @spin_lock_bh(i32* %198)
  %200 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %201 = load i32, i32* @ISCSI_TASK_REQUEUE_SCSIQ, align 4
  %202 = call i32 @iscsi_complete_task(%struct.iscsi_task* %200, i32 %201)
  %203 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %204 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %203, i32 0, i32 2
  %205 = call i32 @spin_unlock_bh(i32* %204)
  br label %206

206:                                              ; preds = %196, %129, %121
  %207 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %208 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %207, i32 0, i32 1
  %209 = call i32 @spin_unlock_bh(i32* %208)
  %210 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %212 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %210, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %215, i32 %216)
  %218 = load i32, i32* @SCSI_MLQUEUE_TARGET_BUSY, align 4
  store i32 %218, i32* %3, align 4
  br label %250

219:                                              ; preds = %153
  %220 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %221 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %220, i32 0, i32 2
  %222 = call i32 @spin_lock_bh(i32* %221)
  %223 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %224 = load i32, i32* @ISCSI_TASK_REQUEUE_SCSIQ, align 4
  %225 = call i32 @iscsi_complete_task(%struct.iscsi_task* %223, i32 %224)
  %226 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %227 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %226, i32 0, i32 2
  %228 = call i32 @spin_unlock_bh(i32* %227)
  br label %229

229:                                              ; preds = %219, %111, %99, %92, %34
  %230 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %231 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %230, i32 0, i32 1
  %232 = call i32 @spin_unlock_bh(i32* %231)
  %233 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %234 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %235 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %233, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %238, i32 %239)
  %241 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %242 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %243 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %242)
  %244 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %241, i32 %243)
  %245 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %246 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %245, i32 0, i32 1
  %247 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %246, align 8
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %249 = call i32 %247(%struct.scsi_cmnd* %248)
  store i32 0, i32* %3, align 4
  br label %250

250:                                              ; preds = %229, %206, %188
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local %struct.iscsi_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.iscsi_cls_session* @starget_to_session(i32) #1

declare dso_local i32 @scsi_target(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iscsi_session_chkready(%struct.iscsi_cls_session*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @iscsi_check_cmdsn_window_closed(%struct.iscsi_conn*) #1

declare dso_local %struct.iscsi_task* @iscsi_alloc_task(%struct.iscsi_conn*, %struct.scsi_cmnd*) #1

declare dso_local i32 @iscsi_prep_scsi_cmd_pdu(%struct.iscsi_task*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsi_conn_queue_work(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_complete_task(%struct.iscsi_task*, i32) #1

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.iscsi_session*, i8*, i32, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
