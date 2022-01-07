; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, i32 }
%struct.fc_lport = type { i64 }
%struct.qedf_ctx = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_rport = type { i32, %struct.fc_rport_libfc_priv* }
%struct.fc_rport_libfc_priv = type { i32 }
%struct.qedf_rport = type { i32, i32, i32, i64, i32 }
%struct.qedf_ioreq = type { %struct.scsi_cmnd* }

@QEDF_MAX_BDS_PER_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Number of SG elements %d exceeds what hardware limitation of %d.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@QEDF_UNLOADING = common dso_local global i32 0, align 4
@QEDF_DBG_STOP_IO = common dso_local global i32 0, align 4
@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Returning DNC as unloading or stop io, flags 0x%lx.\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Completing sc_cmd=%p DID_NO_CONNECT as MSI-X is not enabled.\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"fc_remote_port_chkready failed=0x%x for port_id=0x%06x.\0A\00", align 1
@QEDF_DRAIN_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Drain active.\0A\00", align 1
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@LPORT_ST_READY = common dso_local global i64 0, align 8
@QEDF_LINK_UP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"Link down.\0A\00", align 1
@QEDF_RPORT_SESSION_READY = common dso_local global i32 0, align 4
@QEDF_RPORT_UPLOADING_CONNECTION = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_TARGET_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@QEDF_SCSI_CMD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Unable to post io_req\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedf_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.fc_lport*, align 8
  %7 = alloca %struct.qedf_ctx*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  %9 = alloca %struct.fc_rport_libfc_priv*, align 8
  %10 = alloca %struct.qedf_rport*, align 8
  %11 = alloca %struct.qedf_ioreq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %17 = call %struct.fc_lport* @shost_priv(%struct.Scsi_Host* %16)
  store %struct.fc_lport* %17, %struct.fc_lport** %6, align 8
  %18 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %19 = call %struct.qedf_ctx* @lport_priv(%struct.fc_lport* %18)
  store %struct.qedf_ctx* %19, %struct.qedf_ctx** %7, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @scsi_target(i32 %22)
  %24 = call %struct.fc_rport* @starget_to_rport(i32 %23)
  store %struct.fc_rport* %24, %struct.fc_rport** %8, align 8
  %25 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %26 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %25, i32 0, i32 1
  %27 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %26, align 8
  store %struct.fc_rport_libfc_priv* %27, %struct.fc_rport_libfc_priv** %9, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %31 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %30)
  %32 = load i32, i32* @QEDF_MAX_BDS_PER_CMD, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %2
  %35 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @QEDF_MAX_BDS_PER_CMD, align 4
  %39 = call i32 @QEDF_ERR(i32* %36, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* @DID_ERROR, align 4
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 1
  %45 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %44, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %47 = call i32 %45(%struct.scsi_cmnd* %46)
  store i32 0, i32* %3, align 4
  br label %233

48:                                               ; preds = %2
  %49 = load i32, i32* @QEDF_UNLOADING, align 4
  %50 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %51 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %50, i32 0, i32 2
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @QEDF_DBG_STOP_IO, align 4
  %56 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %56, i32 0, i32 2
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %54, %48
  %61 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %62 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* @QEDF_LOG_IO, align 4
  %64 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %65 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %62, i32 %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @DID_NO_CONNECT, align 4
  %69 = shl i32 %68, 16
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 1
  %74 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %73, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %76 = call i32 %74(%struct.scsi_cmnd* %75)
  store i32 0, i32* %3, align 4
  br label %233

77:                                               ; preds = %54
  %78 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %79 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %77
  %85 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %86 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %85, i32 0, i32 0
  %87 = load i32, i32* @QEDF_LOG_IO, align 4
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %89 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %86, i32 %87, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), %struct.scsi_cmnd* %88)
  %90 = load i32, i32* @DID_NO_CONNECT, align 4
  %91 = shl i32 %90, 16
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 1
  %96 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %95, align 8
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %98 = call i32 %96(%struct.scsi_cmnd* %97)
  store i32 0, i32* %3, align 4
  br label %233

99:                                               ; preds = %77
  %100 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %101 = call i32 @fc_remote_port_chkready(%struct.fc_rport* %100)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %99
  %105 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %106 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* @QEDF_LOG_IO, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.fc_rport*, %struct.fc_rport** %8, align 8
  %110 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %106, i32 %107, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 1
  %118 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %117, align 8
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %120 = call i32 %118(%struct.scsi_cmnd* %119)
  store i32 0, i32* %3, align 4
  br label %233

121:                                              ; preds = %99
  %122 = load i32, i32* @QEDF_DRAIN_ACTIVE, align 4
  %123 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %124 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %123, i32 0, i32 2
  %125 = call i64 @test_bit(i32 %122, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %129 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %128, i32 0, i32 0
  %130 = load i32, i32* @QEDF_LOG_IO, align 4
  %131 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %129, i32 %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %132, i32* %12, align 4
  br label %231

133:                                              ; preds = %121
  %134 = load %struct.fc_lport*, %struct.fc_lport** %6, align 8
  %135 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @LPORT_ST_READY, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %141 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %140, i32 0, i32 1
  %142 = call i64 @atomic_read(i32* %141)
  %143 = load i64, i64* @QEDF_LINK_UP, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139, %133
  %146 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %147 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %146, i32 0, i32 0
  %148 = load i32, i32* @QEDF_LOG_IO, align 4
  %149 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %147, i32 %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %150 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %150, i32* %12, align 4
  br label %231

151:                                              ; preds = %139
  %152 = load %struct.fc_rport_libfc_priv*, %struct.fc_rport_libfc_priv** %9, align 8
  %153 = getelementptr inbounds %struct.fc_rport_libfc_priv, %struct.fc_rport_libfc_priv* %152, i64 1
  %154 = bitcast %struct.fc_rport_libfc_priv* %153 to %struct.qedf_rport*
  store %struct.qedf_rport* %154, %struct.qedf_rport** %10, align 8
  %155 = load i32, i32* @QEDF_RPORT_SESSION_READY, align 4
  %156 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %157 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %156, i32 0, i32 4
  %158 = call i64 @test_bit(i32 %155, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = load i32, i32* @QEDF_RPORT_UPLOADING_CONNECTION, align 4
  %162 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %163 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %162, i32 0, i32 4
  %164 = call i64 @test_bit(i32 %161, i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %160, %151
  %167 = load i32, i32* @SCSI_MLQUEUE_TARGET_BUSY, align 4
  store i32 %167, i32* %12, align 4
  br label %231

168:                                              ; preds = %160
  %169 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %170 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %169, i32 0, i32 0
  %171 = call i32 @atomic_inc(i32* %170)
  %172 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %173 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %192

176:                                              ; preds = %168
  %177 = load i32, i32* @jiffies, align 4
  %178 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %179 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @time_after(i32 %177, i64 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %176
  %184 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %185 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %184, i32 0, i32 3
  store i64 0, i64* %185, align 8
  br label %191

186:                                              ; preds = %176
  %187 = load i32, i32* @SCSI_MLQUEUE_TARGET_BUSY, align 4
  store i32 %187, i32* %12, align 4
  %188 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %189 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %188, i32 0, i32 0
  %190 = call i32 @atomic_dec(i32* %189)
  br label %231

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %168
  %193 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %194 = load i32, i32* @QEDF_SCSI_CMD, align 4
  %195 = call %struct.qedf_ioreq* @qedf_alloc_cmd(%struct.qedf_rport* %193, i32 %194)
  store %struct.qedf_ioreq* %195, %struct.qedf_ioreq** %11, align 8
  %196 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %11, align 8
  %197 = icmp ne %struct.qedf_ioreq* %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %192
  %199 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %199, i32* %12, align 4
  %200 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %201 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %200, i32 0, i32 0
  %202 = call i32 @atomic_dec(i32* %201)
  br label %231

203:                                              ; preds = %192
  %204 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %205 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %11, align 8
  %206 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %205, i32 0, i32 0
  store %struct.scsi_cmnd* %204, %struct.scsi_cmnd** %206, align 8
  %207 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %208 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %207, i32 0, i32 1
  %209 = load i64, i64* %14, align 8
  %210 = call i32 @spin_lock_irqsave(i32* %208, i64 %209)
  %211 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %212 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %11, align 8
  %213 = call i64 @qedf_post_io_req(%struct.qedf_rport* %211, %struct.qedf_ioreq* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %203
  %216 = load %struct.qedf_ctx*, %struct.qedf_ctx** %7, align 8
  %217 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %216, i32 0, i32 0
  %218 = call i32 @QEDF_WARN(i32* %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %219 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %220 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %219, i32 0, i32 2
  %221 = call i32 @atomic_inc(i32* %220)
  %222 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %222, i32* %12, align 4
  br label %223

223:                                              ; preds = %215, %203
  %224 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %225 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %224, i32 0, i32 1
  %226 = load i64, i64* %14, align 8
  %227 = call i32 @spin_unlock_irqrestore(i32* %225, i64 %226)
  %228 = load %struct.qedf_rport*, %struct.qedf_rport** %10, align 8
  %229 = getelementptr inbounds %struct.qedf_rport, %struct.qedf_rport* %228, i32 0, i32 0
  %230 = call i32 @atomic_dec(i32* %229)
  br label %231

231:                                              ; preds = %223, %198, %186, %166, %145, %127
  %232 = load i32, i32* %12, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %231, %104, %84, %60, %34
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local %struct.fc_lport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.qedf_ctx* @lport_priv(%struct.fc_lport*) #1

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(i32) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.qedf_ioreq* @qedf_alloc_cmd(%struct.qedf_rport*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qedf_post_io_req(%struct.qedf_rport*, %struct.qedf_ioreq*) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
