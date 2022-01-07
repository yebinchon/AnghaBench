; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_eh_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_main.c_qedf_eh_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32*, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.fc_rport = type { %struct.fc_rport_libfc_priv* }
%struct.fc_rport_libfc_priv = type { i32 }
%struct.fc_lport = type { i64, i32 }
%struct.qedf_ctx = type { i32, i64 }
%struct.qedf_ioreq = type { i64, i32, %struct.scsi_cmnd*, i32, i32, %struct.scsi_cmnd* }
%struct.fc_rport_priv = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.qedf_rport = type { i32, %struct.fc_rport_priv* }

@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"stale rport, sc_cmd=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"sc_cmd not queued with lld, sc_cmd=%p op=0x%02x, port_id=%06x\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"Freed/Incorrect io_req, io_req->sc_cmd=%p, sc_cmd=%p, port_id=%06x, bailing out.\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"rport not ready, io_req=%p, xid=0x%x sc_cmd=%p op=0x%02x, refcount=%d, port_id=%06x\0A\00", align 1
@QEDF_RPORT_UPLOADING_CONNECTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Connection uploading, xid=0x%x., port_id=%06x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ABTS succeeded\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ABTS failed\0A\00", align 1
@LPORT_ST_READY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"link not ready.\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Aborting io_req=%p sc_cmd=%p xid=0x%x fp_idx=%d, port_id=%06x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Failed to queue ABTS.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@QEDF_IOREQ_EV_ABORT_SUCCESS = common dso_local global i64 0, align 8
@QEDF_IOREQ_EV_ABORT_FAILED = common dso_local global i64 0, align 8
@QEDF_IOREQ_EV_CLEANUP_SUCCESS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"ABTS succeeded, xid=0x%x.\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"ABTS failed, xid=0x%x.\0A\00", align 1
@fc_rport_destroy = common dso_local global i32 0, align 4
@qedf_release_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @qedf_eh_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedf_eh_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.fc_rport*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.qedf_ctx*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca %struct.fc_rport_libfc_priv*, align 8
  %8 = alloca %struct.fc_rport_priv*, align 8
  %9 = alloca %struct.qedf_rport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @scsi_target(%struct.TYPE_6__* %17)
  %19 = call %struct.fc_rport* @starget_to_rport(i32 %18)
  store %struct.fc_rport* %19, %struct.fc_rport** %3, align 8
  %20 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %21 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %20, i32 0, i32 0
  %22 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %21, align 8
  store %struct.fc_rport_libfc_priv* %22, %struct.fc_rport_libfc_priv** %7, align 8
  store %struct.qedf_rport* null, %struct.qedf_rport** %9, align 8
  %23 = load i32, i32* @FAILED, align 4
  store i32 %23, i32* %10, align 4
  store i32 100, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.fc_lport* @shost_priv(i32 %28)
  store %struct.fc_lport* %29, %struct.fc_lport** %4, align 8
  %30 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %31 = call i64 @lport_priv(%struct.fc_lport* %30)
  %32 = inttoptr i64 %31 to %struct.qedf_ctx*
  store %struct.qedf_ctx* %32, %struct.qedf_ctx** %5, align 8
  %33 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %7, align 8
  %34 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %33, i64 1
  %35 = bitcast %struct.fc_rport_libfc_priv* %34 to %struct.qedf_rport*
  store %struct.qedf_rport* %35, %struct.qedf_rport** %9, align 8
  %36 = load %struct.qedf_rport*, %struct.qedf_rport** %9, align 8
  %37 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %36, i32 0, i32 1
  %38 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %37, align 8
  store %struct.fc_rport_priv* %38, %struct.fc_rport_priv** %8, align 8
  %39 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %40 = icmp ne %struct.fc_rport_priv* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %43 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %42, i32 0, i32 0
  %44 = call i32 @kref_get_unless_zero(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41, %1
  %47 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %47, i32 0, i32 0
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %50 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %49)
  store i32 1, i32* %10, align 4
  br label %284

51:                                               ; preds = %41
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.qedf_ioreq*
  store %struct.qedf_ioreq* %56, %struct.qedf_ioreq** %6, align 8
  %57 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %58 = icmp ne %struct.qedf_ioreq* %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %51
  %60 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %60, i32 0, i32 0
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %69 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %61, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %62, i32 %67, i32 %71)
  %73 = load i32, i32* @SUCCESS, align 4
  store i32 %73, i32* %10, align 4
  br label %279

74:                                               ; preds = %51
  %75 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %76 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %75, i32 0, i32 1
  %77 = call i32 @kref_get_unless_zero(i32* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %14, align 4
  br label %81

81:                                               ; preds = %80, %74
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %86 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %85, i32 0, i32 5
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %86, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %89 = icmp ne %struct.scsi_cmnd* %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84, %81
  %91 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %91, i32 0, i32 0
  %93 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %94 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %93, i32 0, i32 5
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %94, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %97 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %98 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %92, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %95, %struct.scsi_cmnd* %96, i32 %100)
  br label %279

102:                                              ; preds = %84
  %103 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %104 = call i64 @fc_remote_port_chkready(%struct.fc_rport* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %102
  %107 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %108 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %107, i32 0, i32 1
  %109 = call i32 @kref_read(i32* %108)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %111 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %110, i32 0, i32 0
  %112 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %113 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %114 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %113, i32 0, i32 2
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %114, align 8
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %118 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %124 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %111, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), %struct.qedf_ioreq* %112, %struct.scsi_cmnd* %115, %struct.scsi_cmnd* %116, i32 %121, i32 %122, i32 %126)
  br label %279

128:                                              ; preds = %102
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %130 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %279

134:                                              ; preds = %128
  %135 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %136 = load %struct.qedf_rport*, %struct.qedf_rport** %9, align 8
  %137 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %136, i32 0, i32 0
  %138 = call i64 @test_bit(i32 %135, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %179

140:                                              ; preds = %134
  %141 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %142 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %141, i32 0, i32 0
  %143 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %144 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %143, i32 0, i32 2
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %144, align 8
  %146 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %147 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %142, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), %struct.scsi_cmnd* %145, i32 %149)
  br label %151

151:                                              ; preds = %161, %140
  %152 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %153 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %152, i32 0, i32 5
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %153, align 8
  %155 = icmp ne %struct.scsi_cmnd* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br label %159

159:                                              ; preds = %156, %151
  %160 = phi i1 [ false, %151 ], [ %158, %156 ]
  br i1 %160, label %161, label %165

161:                                              ; preds = %159
  %162 = call i32 @msleep(i32 100)
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %11, align 4
  br label %151

165:                                              ; preds = %159
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %170 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %169, i32 0, i32 0
  %171 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %172 = load i32, i32* @SUCCESS, align 4
  store i32 %172, i32* %10, align 4
  br label %178

173:                                              ; preds = %165
  %174 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %175 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %174, i32 0, i32 0
  %176 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %177 = load i32, i32* @FAILED, align 4
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %173, %168
  br label %279

179:                                              ; preds = %134
  %180 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %181 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @LPORT_ST_READY, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  %186 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %187 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185, %179
  %191 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %192 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %191, i32 0, i32 0
  %193 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %279

194:                                              ; preds = %185
  %195 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %196 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %195, i32 0, i32 0
  %197 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %199 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %200 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %199, i32 0, i32 2
  %201 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %200, align 8
  %202 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %203 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %206 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %196, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), %struct.qedf_ioreq* %197, %struct.scsi_cmnd* %198, %struct.scsi_cmnd* %201, i32 %204, i32 %208)
  %210 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %211 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %194
  %215 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %216 = call i32 @qedf_stop_all_io(%struct.qedf_ctx* %215)
  %217 = load i32, i32* @SUCCESS, align 4
  store i32 %217, i32* %10, align 4
  br label %279

218:                                              ; preds = %194
  %219 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %220 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %219, i32 0, i32 3
  %221 = call i32 @init_completion(i32* %220)
  %222 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %223 = call i32 @qedf_initiate_abts(%struct.qedf_ioreq* %222, i32 1)
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %218
  %227 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %228 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %227, i32 0, i32 0
  %229 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %228, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %230 = load i32, i32* @SUCCESS, align 4
  store i32 %230, i32* %10, align 4
  %231 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %232 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %233 = load i32, i32* @DID_ERROR, align 4
  %234 = call i32 @qedf_scsi_done(%struct.qedf_ctx* %231, %struct.qedf_ioreq* %232, i32 %233)
  br label %279

235:                                              ; preds = %218
  %236 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %237 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %236, i32 0, i32 3
  %238 = call i32 @wait_for_completion(i32* %237)
  %239 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %240 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @QEDF_IOREQ_EV_ABORT_SUCCESS, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %256, label %244

244:                                              ; preds = %235
  %245 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %246 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @QEDF_IOREQ_EV_ABORT_FAILED, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %256, label %250

250:                                              ; preds = %244
  %251 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %252 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @QEDF_IOREQ_EV_CLEANUP_SUCCESS, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %250, %244, %235
  %257 = load i32, i32* @SUCCESS, align 4
  store i32 %257, i32* %10, align 4
  br label %260

258:                                              ; preds = %250
  %259 = load i32, i32* @FAILED, align 4
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* @SUCCESS, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %260
  %265 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %266 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %265, i32 0, i32 0
  %267 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %268 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %267, i32 0, i32 2
  %269 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %268, align 8
  %270 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %266, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), %struct.scsi_cmnd* %269)
  br label %278

271:                                              ; preds = %260
  %272 = load %struct.qedf_ctx*, %struct.qedf_ctx** %5, align 8
  %273 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %272, i32 0, i32 0
  %274 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %275 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %274, i32 0, i32 2
  %276 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %275, align 8
  %277 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %273, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), %struct.scsi_cmnd* %276)
  br label %278

278:                                              ; preds = %271, %264
  br label %279

279:                                              ; preds = %278, %226, %214, %190, %178, %133, %106, %90, %59
  %280 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %8, align 8
  %281 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %280, i32 0, i32 0
  %282 = load i32, i32* @fc_rport_destroy, align 4
  %283 = call i32 @kref_put(i32* %281, i32 %282)
  br label %284

284:                                              ; preds = %279, %46
  %285 = load i32, i32* %14, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %289 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %288, i32 0, i32 1
  %290 = load i32, i32* @qedf_release_cmd, align 4
  %291 = call i32 @kref_put(i32* %289, i32 %290)
  br label %292

292:                                              ; preds = %287, %284
  %293 = load i32, i32* %10, align 4
  ret i32 %293
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_6__*) #1

declare dso_local %struct.fc_lport* @shost_priv(i32) #1

declare dso_local i64 @lport_priv(%struct.fc_lport*) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i64 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qedf_stop_all_io(%struct.qedf_ctx*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @qedf_initiate_abts(%struct.qedf_ioreq*, i32) #1

declare dso_local i32 @qedf_scsi_done(%struct.qedf_ctx*, %struct.qedf_ioreq*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
