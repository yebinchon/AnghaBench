; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_flush_active_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_flush_active_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_rport = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, %struct.qedf_ctx* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qedf_ctx = type { i32, i32, %struct.qedf_cmd_mgr* }
%struct.qedf_cmd_mgr = type { %struct.qedf_ioreq*, i32 }
%struct.qedf_ioreq = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32, %struct.qedf_rport*, i32, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"fcport is NULL\0A\00", align 1
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"fcport is no longer offloaded.\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"qedf is NULL.\0A\00", align 1
@QEDF_RPORT_UPLOADING_CONNECTION = common dso_local global i32 0, align 4
@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Waiting for %d I/Os to be queued\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%d IOs request could not be queued\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Flush active i/o's num=0x%x fcport=0x%p port_id=0x%06x scsi_id=%d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Locking flush mutex.\0A\00", align 1
@QEDF_RPORT_IN_TARGET_RESET = common dso_local global i32 0, align 4
@QEDF_RPORT_IN_LUN_RESET = common dso_local global i32 0, align 4
@FCOE_PARAMS_NUM_TASKS = common dso_local global i32 0, align 4
@QEDF_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@QEDF_SCSI_CMD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Allocated but not queued, xid=0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Not outstanding, xid=0x%x, cmd_type=%d refcount=%d.\0A\00", align 1
@QEDFC_CMD_ST_RRQ_WAIT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [50 x i8] c"Putting reference for pending RRQ work xid=0x%x.\0A\00", align 1
@qedf_release_cmd = common dso_local global i32 0, align 4
@QEDF_ELS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"Could not get kref for ELS io_req=0x%p xid=0x%x.\0A\00", align 1
@QEDF_ABTS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [52 x i8] c"Could not get kref for abort io_req=0x%p xid=0x%x.\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Flushing abort xid=0x%x.\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"Putting ref for cancelled RRQ work xid=0x%x.\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"Putting ref for cancelled tmo work xid=0x%x.\0A\00", align 1
@QEDF_CMD_IN_ABORT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [40 x i8] c"Device backpointer NULL for sc_cmd=%p.\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Could not get kref for io_req=0x%p xid=0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Cleanup xid=0x%x.\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"Flushed 0x%x I/Os, active=0x%x.\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Flushed 0x%x I/Os, active=0x%x cnt=%d.\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Flushed %d I/Os, active=%d.\0A\00", align 1
@QEDF_CMD_DIRTY = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [81 x i8] c"Outstanding io_req =%p xid=0x%x flags=0x%lx, sc_cmd=%p refcount=%d cmd_type=%d.\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Unlocking flush mutex.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_flush_active_ios(%struct.qedf_rport* %0, i32 %1) #0 {
  %3 = alloca %struct.qedf_rport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedf_ioreq*, align 8
  %6 = alloca %struct.qedf_ctx*, align 8
  %7 = alloca %struct.qedf_cmd_mgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qedf_rport* %0, %struct.qedf_rport** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %11, align 4
  store i32 100, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %15 = icmp ne %struct.qedf_rport* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %528

18:                                               ; preds = %2
  %19 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %20 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %21 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %528

26:                                               ; preds = %18
  %27 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %28 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %27, i32 0, i32 6
  %29 = load %struct.qedf_ctx*, %struct.qedf_ctx** %28, align 8
  store %struct.qedf_ctx* %29, %struct.qedf_ctx** %6, align 8
  %30 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %31 = icmp ne %struct.qedf_ctx* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %528

34:                                               ; preds = %26
  %35 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %36 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %37 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %36, i32 0, i32 1
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %64, %43
  %45 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %46 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %45, i32 0, i32 5
  %47 = call i64 @atomic_read(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* @QEDF_LOG_IO, align 4
  %53 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %54 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %53, i32 0, i32 5
  %55 = call i64 @atomic_read(i32* %54)
  %56 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %51, i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %61 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %60, i32 0, i32 5
  %62 = call i64 @atomic_read(i32* %61)
  %63 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %59, %49
  %65 = call i32 @msleep(i32 20)
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %12, align 4
  br label %44

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %40, %34
  %70 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %70, i32 0, i32 2
  %72 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %71, align 8
  store %struct.qedf_cmd_mgr* %72, %struct.qedf_cmd_mgr** %7, align 8
  %73 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %74 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %73, i32 0, i32 1
  %75 = load i32, i32* @QEDF_LOG_IO, align 4
  %76 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %77 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %76, i32 0, i32 2
  %78 = call i64 @atomic_read(i32* %77)
  %79 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %80 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %81 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %87 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %74, i32 %75, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i64 %78, %struct.qedf_rport* %79, i32 %85, i32 %90)
  %92 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %93 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %92, i32 0, i32 1
  %94 = load i32, i32* @QEDF_LOG_IO, align 4
  %95 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %93, i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %96 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %97 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %96, i32 0, i32 0
  %98 = call i32 @mutex_lock(i32* %97)
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %106

101:                                              ; preds = %69
  %102 = load i32, i32* @QEDF_RPORT_IN_TARGET_RESET, align 4
  %103 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %104 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %103, i32 0, i32 1
  %105 = call i32 @set_bit(i32 %102, i32* %104)
  br label %114

106:                                              ; preds = %69
  %107 = load i32, i32* @QEDF_RPORT_IN_LUN_RESET, align 4
  %108 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %109 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %108, i32 0, i32 1
  %110 = call i32 @set_bit(i32 %107, i32* %109)
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %113 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %106, %101
  store i32 0, i32* %8, align 4
  br label %115

115:                                              ; preds = %409, %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @FCOE_PARAMS_NUM_TASKS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %412

119:                                              ; preds = %115
  %120 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %121 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %120, i32 0, i32 0
  %122 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %122, i64 %124
  store %struct.qedf_ioreq* %125, %struct.qedf_ioreq** %5, align 8
  %126 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %127 = icmp ne %struct.qedf_ioreq* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %119
  br label %409

129:                                              ; preds = %119
  %130 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %131 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %130, i32 0, i32 6
  %132 = load %struct.qedf_rport*, %struct.qedf_rport** %131, align 8
  %133 = icmp ne %struct.qedf_rport* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %409

135:                                              ; preds = %129
  %136 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %137 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %136, i32 0, i32 1
  %138 = load i64, i64* %10, align 8
  %139 = call i32 @spin_lock_irqsave(i32* %137, i64 %138)
  %140 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %141 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %140, i32 0, i32 11
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %135
  %145 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %146 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %147 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %146, i32 0, i32 3
  %148 = call i64 @test_bit(i32 %145, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %144
  %151 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %152 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @QEDF_SCSI_CMD, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %158 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %157, i32 0, i32 1
  %159 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %160 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %156, %150
  br label %164

164:                                              ; preds = %163, %144
  %165 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %166 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %165, i32 0, i32 1
  %167 = load i64, i64* %10, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* %166, i64 %167)
  br label %174

169:                                              ; preds = %135
  %170 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %171 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %170, i32 0, i32 1
  %172 = load i64, i64* %10, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  br label %409

174:                                              ; preds = %164
  %175 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %176 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %175, i32 0, i32 6
  %177 = load %struct.qedf_rport*, %struct.qedf_rport** %176, align 8
  %178 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %179 = icmp ne %struct.qedf_rport* %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %409

181:                                              ; preds = %174
  %182 = load i32, i32* @QEDF_CMD_OUTSTANDING, align 4
  %183 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %184 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %183, i32 0, i32 3
  %185 = call i64 @test_bit(i32 %182, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %226, label %187

187:                                              ; preds = %181
  %188 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %189 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %188, i32 0, i32 5
  %190 = call i32 @kref_read(i32* %189)
  store i32 %190, i32* %13, align 4
  %191 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %192 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %191, i32 0, i32 1
  %193 = load i32, i32* @QEDF_LOG_IO, align 4
  %194 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %195 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %198 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %192, i32 %193, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %196, i32 %199, i32 %200)
  %202 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %203 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %202, i32 0, i32 10
  %204 = call i64 @atomic_read(i32* %203)
  %205 = load i64, i64* @QEDFC_CMD_ST_RRQ_WAIT, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %225

207:                                              ; preds = %187
  %208 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %209 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %208, i32 0, i32 9
  %210 = call i64 @cancel_delayed_work_sync(i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %207
  %213 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %214 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %213, i32 0, i32 1
  %215 = load i32, i32* @QEDF_LOG_IO, align 4
  %216 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %217 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %214, i32 %215, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %218)
  %220 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %221 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %220, i32 0, i32 5
  %222 = load i32, i32* @qedf_release_cmd, align 4
  %223 = call i32 @kref_put(i32* %221, i32 %222)
  br label %224

224:                                              ; preds = %212, %207
  br label %225

225:                                              ; preds = %224, %187
  br label %409

226:                                              ; preds = %181
  %227 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %228 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @QEDF_ELS, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %255

232:                                              ; preds = %226
  %233 = load i32, i32* %4, align 4
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %255

235:                                              ; preds = %232
  %236 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %237 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %236, i32 0, i32 5
  %238 = call i32 @kref_get_unless_zero(i32* %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %235
  %242 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %243 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %242, i32 0, i32 1
  %244 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %245 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %246 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %243, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), %struct.qedf_ioreq* %244, i32 %247)
  br label %409

249:                                              ; preds = %235
  %250 = load i32, i32* %11, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %11, align 4
  %252 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %253 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %254 = call i32 @qedf_flush_els_req(%struct.qedf_ctx* %252, %struct.qedf_ioreq* %253)
  br label %404

255:                                              ; preds = %232, %226
  %256 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %257 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @QEDF_ABTS, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %338

261:                                              ; preds = %255
  %262 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %263 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %262, i32 0, i32 5
  %264 = call i32 @kref_get_unless_zero(i32* %263)
  store i32 %264, i32* %9, align 4
  %265 = load i32, i32* %9, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %275, label %267

267:                                              ; preds = %261
  %268 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %269 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %268, i32 0, i32 1
  %270 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %271 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %272 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %269, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), %struct.qedf_ioreq* %270, i32 %273)
  br label %409

275:                                              ; preds = %261
  %276 = load i32, i32* %4, align 4
  %277 = icmp ne i32 %276, -1
  br i1 %277, label %278, label %285

278:                                              ; preds = %275
  %279 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %280 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %4, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %278
  br label %404

285:                                              ; preds = %278, %275
  %286 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %287 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %286, i32 0, i32 1
  %288 = load i32, i32* @QEDF_LOG_IO, align 4
  %289 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %290 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %287, i32 %288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %291)
  %293 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %294 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %293, i32 0, i32 9
  %295 = call i64 @cancel_delayed_work_sync(i32* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %309

297:                                              ; preds = %285
  %298 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %299 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %298, i32 0, i32 1
  %300 = load i32, i32* @QEDF_LOG_IO, align 4
  %301 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %302 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %299, i32 %300, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i32 %303)
  %305 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %306 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %305, i32 0, i32 5
  %307 = load i32, i32* @qedf_release_cmd, align 4
  %308 = call i32 @kref_put(i32* %306, i32 %307)
  br label %309

309:                                              ; preds = %297, %285
  %310 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %311 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %310, i32 0, i32 8
  %312 = call i64 @cancel_delayed_work_sync(i32* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %335

314:                                              ; preds = %309
  %315 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %316 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %315, i32 0, i32 1
  %317 = load i32, i32* @QEDF_LOG_IO, align 4
  %318 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %319 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %316, i32 %317, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %320)
  %322 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %323 = call i32 @qedf_initiate_cleanup(%struct.qedf_ioreq* %322, i32 1)
  %324 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %325 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %324, i32 0, i32 7
  %326 = call i32 @complete(i32* %325)
  %327 = load i32, i32* @QEDF_CMD_IN_ABORT, align 4
  %328 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %329 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %328, i32 0, i32 3
  %330 = call i32 @clear_bit(i32 %327, i32* %329)
  %331 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %332 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %331, i32 0, i32 5
  %333 = load i32, i32* @qedf_release_cmd, align 4
  %334 = call i32 @kref_put(i32* %332, i32 %333)
  br label %335

335:                                              ; preds = %314, %309
  %336 = load i32, i32* %11, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %11, align 4
  br label %404

338:                                              ; preds = %255
  %339 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %340 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %339, i32 0, i32 2
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = icmp ne %struct.TYPE_5__* %341, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %338
  br label %409

344:                                              ; preds = %338
  %345 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %346 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %345, i32 0, i32 2
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %367, label %351

351:                                              ; preds = %344
  %352 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %353 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %352, i32 0, i32 1
  %354 = load i32, i32* @QEDF_LOG_IO, align 4
  %355 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %356 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %355, i32 0, i32 2
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %356, align 8
  %358 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %353, i32 %354, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_5__* %357)
  %359 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %360 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %359, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %360, align 8
  %361 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %362 = call i32 @qedf_initiate_cleanup(%struct.qedf_ioreq* %361, i32 0)
  %363 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %364 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %363, i32 0, i32 5
  %365 = load i32, i32* @qedf_release_cmd, align 4
  %366 = call i32 @kref_put(i32* %364, i32 %365)
  br label %409

367:                                              ; preds = %344
  %368 = load i32, i32* %4, align 4
  %369 = icmp sgt i32 %368, -1
  br i1 %369, label %370, label %378

370:                                              ; preds = %367
  %371 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %372 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load i32, i32* %4, align 4
  %375 = icmp ne i32 %373, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %370
  br label %409

377:                                              ; preds = %370
  br label %378

378:                                              ; preds = %377, %367
  %379 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %380 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %379, i32 0, i32 5
  %381 = call i32 @kref_get_unless_zero(i32* %380)
  store i32 %381, i32* %9, align 4
  %382 = load i32, i32* %9, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %392, label %384

384:                                              ; preds = %378
  %385 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %386 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %385, i32 0, i32 1
  %387 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %388 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %389 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 4
  %391 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %386, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), %struct.qedf_ioreq* %387, i32 %390)
  br label %409

392:                                              ; preds = %378
  %393 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %394 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %393, i32 0, i32 1
  %395 = load i32, i32* @QEDF_LOG_IO, align 4
  %396 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %397 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 4
  %399 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %394, i32 %395, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %398)
  %400 = load i32, i32* %11, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %11, align 4
  %402 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %403 = call i32 @qedf_initiate_cleanup(%struct.qedf_ioreq* %402, i32 1)
  br label %404

404:                                              ; preds = %392, %335, %284, %249
  %405 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %406 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %405, i32 0, i32 5
  %407 = load i32, i32* @qedf_release_cmd, align 4
  %408 = call i32 @kref_put(i32* %406, i32 %407)
  br label %409

409:                                              ; preds = %404, %384, %376, %351, %343, %267, %241, %225, %180, %169, %134, %128
  %410 = load i32, i32* %8, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %8, align 4
  br label %115

412:                                              ; preds = %115
  store i32 60, i32* %12, align 4
  %413 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %414 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %413, i32 0, i32 1
  %415 = load i32, i32* @QEDF_LOG_IO, align 4
  %416 = load i32, i32* %11, align 4
  %417 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %418 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %417, i32 0, i32 2
  %419 = call i64 @atomic_read(i32* %418)
  %420 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %414, i32 %415, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %416, i64 %419)
  %421 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %422 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %423 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %422, i32 0, i32 1
  %424 = call i64 @test_bit(i32 %421, i32* %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %512

426:                                              ; preds = %412
  %427 = load i32, i32* %4, align 4
  %428 = icmp eq i32 %427, -1
  br i1 %428, label %429, label %512

429:                                              ; preds = %426
  br label %430

430:                                              ; preds = %507, %429
  %431 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %432 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %431, i32 0, i32 2
  %433 = call i64 @atomic_read(i32* %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %511

435:                                              ; preds = %430
  %436 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %437 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %436, i32 0, i32 1
  %438 = load i32, i32* @QEDF_LOG_IO, align 4
  %439 = load i32, i32* %11, align 4
  %440 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %441 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %440, i32 0, i32 2
  %442 = call i64 @atomic_read(i32* %441)
  %443 = load i32, i32* %12, align 4
  %444 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %437, i32 %438, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 %439, i64 %442, i32 %443)
  %445 = load i32, i32* %12, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %507

447:                                              ; preds = %435
  %448 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %449 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %448, i32 0, i32 1
  %450 = load i32, i32* %11, align 4
  %451 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %452 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %451, i32 0, i32 2
  %453 = call i64 @atomic_read(i32* %452)
  %454 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %449, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 %450, i64 %453)
  store i32 0, i32* %8, align 4
  br label %455

455:                                              ; preds = %502, %447
  %456 = load i32, i32* %8, align 4
  %457 = load i32, i32* @FCOE_PARAMS_NUM_TASKS, align 4
  %458 = icmp slt i32 %456, %457
  br i1 %458, label %459, label %505

459:                                              ; preds = %455
  %460 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %7, align 8
  %461 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %460, i32 0, i32 0
  %462 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %461, align 8
  %463 = load i32, i32* %8, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %462, i64 %464
  store %struct.qedf_ioreq* %465, %struct.qedf_ioreq** %5, align 8
  %466 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %467 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %466, i32 0, i32 6
  %468 = load %struct.qedf_rport*, %struct.qedf_rport** %467, align 8
  %469 = icmp ne %struct.qedf_rport* %468, null
  br i1 %469, label %470, label %501

470:                                              ; preds = %459
  %471 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %472 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %471, i32 0, i32 6
  %473 = load %struct.qedf_rport*, %struct.qedf_rport** %472, align 8
  %474 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %475 = icmp eq %struct.qedf_rport* %473, %474
  br i1 %475, label %476, label %501

476:                                              ; preds = %470
  %477 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %478 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %477, i32 0, i32 5
  %479 = call i32 @kref_read(i32* %478)
  store i32 %479, i32* %13, align 4
  %480 = load i32, i32* @QEDF_CMD_DIRTY, align 4
  %481 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %482 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %481, i32 0, i32 3
  %483 = call i32 @set_bit(i32 %480, i32* %482)
  %484 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %485 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %484, i32 0, i32 1
  %486 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %487 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %488 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %487, i32 0, i32 4
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %491 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %494 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %493, i32 0, i32 2
  %495 = load %struct.TYPE_5__*, %struct.TYPE_5__** %494, align 8
  %496 = load i32, i32* %13, align 4
  %497 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %5, align 8
  %498 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %485, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.21, i64 0, i64 0), %struct.qedf_ioreq* %486, i32 %489, i32 %492, %struct.TYPE_5__* %495, i32 %496, i32 %499)
  br label %501

501:                                              ; preds = %476, %470, %459
  br label %502

502:                                              ; preds = %501
  %503 = load i32, i32* %8, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %8, align 4
  br label %455

505:                                              ; preds = %455
  %506 = call i32 @WARN_ON(i32 1)
  br label %511

507:                                              ; preds = %435
  %508 = call i32 @msleep(i32 500)
  %509 = load i32, i32* %12, align 4
  %510 = add nsw i32 %509, -1
  store i32 %510, i32* %12, align 4
  br label %430

511:                                              ; preds = %505, %430
  br label %512

512:                                              ; preds = %511, %426, %412
  %513 = load i32, i32* @QEDF_RPORT_IN_LUN_RESET, align 4
  %514 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %515 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %514, i32 0, i32 1
  %516 = call i32 @clear_bit(i32 %513, i32* %515)
  %517 = load i32, i32* @QEDF_RPORT_IN_TARGET_RESET, align 4
  %518 = load %struct.qedf_rport*, %struct.qedf_rport** %3, align 8
  %519 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %518, i32 0, i32 1
  %520 = call i32 @clear_bit(i32 %517, i32* %519)
  %521 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %522 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %521, i32 0, i32 1
  %523 = load i32, i32* @QEDF_LOG_IO, align 4
  %524 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %522, i32 %523, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %525 = load %struct.qedf_ctx*, %struct.qedf_ctx** %6, align 8
  %526 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %525, i32 0, i32 0
  %527 = call i32 @mutex_unlock(i32* %526)
  br label %528

528:                                              ; preds = %512, %32, %24, %16
  ret void
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i64 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @qedf_flush_els_req(%struct.qedf_ctx*, %struct.qedf_ioreq*) #1

declare dso_local i32 @qedf_initiate_cleanup(%struct.qedf_ioreq*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
