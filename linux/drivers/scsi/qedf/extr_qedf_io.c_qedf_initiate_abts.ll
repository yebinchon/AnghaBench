; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_initiate_abts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_initiate_abts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ioreq = type { i64, i32, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.qedf_rport* }
%struct.TYPE_2__ = type { %struct.fcoe_wqe* }
%struct.fcoe_wqe = type { i32 }
%struct.qedf_rport = type { i32, %struct.fcoe_wqe*, i32, i32, %struct.fc_rport_priv*, %struct.qedf_ctx* }
%struct.fc_rport_priv = type { i32, i32 }
%struct.qedf_ctx = type { i32, i32, i32, i32, %struct.fc_lport* }
%struct.fc_lport = type { i64, i32 }

@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tgt not offloaded\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"stale rport\0A\00", align 1
@LPORT_ST_READY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"link is not ready\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"link_down_tmo active.\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"No SQ entries available\0A\00", align 1
@QEDF_RPORT_UPLOADING_CONNECTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"fcport is uploading.\0A\00", align 1
@QEDF_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@QEDF_CMD_IN_CLEANUP = common dso_local global i32 0, align 4
@QEDF_CMD_IN_ABORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [88 x i8] c"io_req xid=0x%x sc_cmd=%p already in cleanup or abort processing or already completed.\0A\00", align 1
@QEDF_ABTS = common dso_local global i32 0, align 4
@QEDF_LOG_SCSI_TM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"ABTS io_req xid = 0x%x refcount=%d\0A\00", align 1
@QEDF_ABORT_TIMEOUT = common dso_local global i32 0, align 4
@fc_rport_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedf_initiate_abts(%struct.qedf_ioreq* %0, i32 %1) #0 {
  %3 = alloca %struct.qedf_ioreq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.qedf_rport*, align 8
  %7 = alloca %struct.fc_rport_priv*, align 8
  %8 = alloca %struct.qedf_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.fcoe_wqe*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.qedf_ioreq* %0, %struct.qedf_ioreq** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %17 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %16, i32 0, i32 7
  %18 = load %struct.qedf_rport*, %struct.qedf_rport** %17, align 8
  store %struct.qedf_rport* %18, %struct.qedf_rport** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %20 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %21 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %20, i32 0, i32 2
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %192

26:                                               ; preds = %2
  %27 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %28 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %27, i32 0, i32 5
  %29 = load %struct.qedf_ctx*, %struct.qedf_ctx** %28, align 8
  store %struct.qedf_ctx* %29, %struct.qedf_ctx** %8, align 8
  %30 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %31 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %30, i32 0, i32 4
  %32 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %31, align 8
  store %struct.fc_rport_priv* %32, %struct.fc_rport_priv** %7, align 8
  %33 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %34 = icmp ne %struct.fc_rport_priv* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %37 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %36, i32 0, i32 0
  %38 = call i32 @kref_get_unless_zero(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35, %26
  %41 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %41, i32 0, i32 0
  %43 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %192

44:                                               ; preds = %35
  %45 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %46 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %48, i32 0, i32 4
  %50 = load %struct.fc_lport*, %struct.fc_lport** %49, align 8
  store %struct.fc_lport* %50, %struct.fc_lport** %5, align 8
  %51 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %52 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LPORT_ST_READY, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %44
  %57 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %58 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56, %44
  %62 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %63 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %187

65:                                               ; preds = %56
  %66 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %66, i32 0, i32 3
  %68 = call i64 @atomic_read(i32* %67)
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %187

74:                                               ; preds = %65
  %75 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %76 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %75, i32 0, i32 3
  %77 = call i64 @atomic_read(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %80, i32 0, i32 0
  %82 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %187

83:                                               ; preds = %74
  %84 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %85 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %86 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %85, i32 0, i32 2
  %87 = call i64 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %91 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %187

93:                                               ; preds = %83
  %94 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %95 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %96 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %95, i32 0, i32 4
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %93
  %100 = load i32, i32* @QEDF_CMD_IN_CLEANUP, align 4
  %101 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %102 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %101, i32 0, i32 4
  %103 = call i64 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @QEDF_CMD_IN_ABORT, align 4
  %107 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %108 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %107, i32 0, i32 4
  %109 = call i64 @test_bit(i32 %106, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %105, %99, %93
  %112 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %113 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %112, i32 0, i32 0
  %114 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %115 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %118 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %113, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.6, i64 0, i64 0), i64 %116, i32 %119)
  store i32 1, i32* %11, align 4
  br label %187

121:                                              ; preds = %105
  %122 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %123 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %122, i32 0, i32 3
  %124 = call i32 @kref_get(i32* %123)
  %125 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %126 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %9, align 8
  %128 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %129 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %133 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* @QEDF_ABTS, align 4
  %137 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %138 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %141 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* @QEDF_CMD_IN_ABORT, align 4
  %143 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %144 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %143, i32 0, i32 4
  %145 = call i32 @set_bit(i32 %142, i32* %144)
  %146 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %147 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %146, i32 0, i32 3
  %148 = call i32 @kref_read(i32* %147)
  store i32 %148, i32* %15, align 4
  %149 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %150 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %149, i32 0, i32 0
  %151 = load i32, i32* @QEDF_LOG_SCSI_TM, align 4
  %152 = load i64, i64* %9, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @QEDF_INFO(i32* %150, i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %152, i32 %153)
  %155 = load %struct.qedf_ctx*, %struct.qedf_ctx** %8, align 8
  %156 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %157 = load i32, i32* @QEDF_ABORT_TIMEOUT, align 4
  %158 = call i32 @qedf_cmd_timer_set(%struct.qedf_ctx* %155, %struct.qedf_ioreq* %156, i32 %157)
  %159 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %160 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %159, i32 0, i32 0
  %161 = load i64, i64* %12, align 8
  %162 = call i32 @spin_lock_irqsave(i32* %160, i64 %161)
  %163 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %164 = call i64 @qedf_get_sqe_idx(%struct.qedf_rport* %163)
  store i64 %164, i64* %14, align 8
  %165 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %166 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %165, i32 0, i32 1
  %167 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %166, align 8
  %168 = load i64, i64* %14, align 8
  %169 = getelementptr inbounds %struct.fcoe_wqe, %struct.fcoe_wqe* %167, i64 %168
  store %struct.fcoe_wqe* %169, %struct.fcoe_wqe** %13, align 8
  %170 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %13, align 8
  %171 = call i32 @memset(%struct.fcoe_wqe* %170, i32 0, i32 4)
  %172 = load %struct.fcoe_wqe*, %struct.fcoe_wqe** %13, align 8
  %173 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %174 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %173, i32 0, i32 2
  %175 = load %struct.TYPE_2__*, %struct.TYPE_2__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  store %struct.fcoe_wqe* %172, %struct.fcoe_wqe** %176, align 8
  %177 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %3, align 8
  %178 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %177, i32 0, i32 2
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = call i32 @init_initiator_abort_fcoe_task(%struct.TYPE_2__* %179)
  %181 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %182 = call i32 @qedf_ring_doorbell(%struct.qedf_rport* %181)
  %183 = load %struct.qedf_rport*, %struct.qedf_rport** %6, align 8
  %184 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %183, i32 0, i32 0
  %185 = load i64, i64* %12, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  br label %187

187:                                              ; preds = %121, %111, %89, %79, %70, %61
  %188 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %7, align 8
  %189 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %188, i32 0, i32 0
  %190 = load i32, i32* @fc_rport_destroy, align 4
  %191 = call i32 @kref_put(i32* %189, i32 %190)
  br label %192

192:                                              ; preds = %187, %40, %24
  %193 = load i32, i32* %11, align 4
  ret i32 %193
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i64, i32) #1

declare dso_local i32 @qedf_cmd_timer_set(%struct.qedf_ctx*, %struct.qedf_ioreq*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qedf_get_sqe_idx(%struct.qedf_rport*) #1

declare dso_local i32 @memset(%struct.fcoe_wqe*, i32, i32) #1

declare dso_local i32 @init_initiator_abort_fcoe_task(%struct.TYPE_2__*) #1

declare dso_local i32 @qedf_ring_doorbell(%struct.qedf_rport*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
